# --- Build Stage ---
FROM node:18 AS build-stage

WORKDIR /app

COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# If you have a build script in your package.json, you can run it here
# RUN npm run build

# --- Production Stage ---
FROM node:18-slim

WORKDIR /app

# Copy only the dependencies installation from the 1st stage image
COPY --from=build-stage /app/node_modules ./node_modules
COPY --from=build-stage /app/package*.json ./

# Copy app source from the 1st stage image
COPY --from=build-stage /app ./

# Our app binds to port 80
EXPOSE 80

ENV PORT="80"
ENTRYPOINT ["npm", "start"]
CMD [ "npm", "start" ]
