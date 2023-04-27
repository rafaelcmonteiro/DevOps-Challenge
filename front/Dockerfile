FROM node:16
# Setting up workidr
WORKDIR /usr/src/app
# Copying json lock and dependencies packages
COPY package*.json ./
# Installing packages.
RUN npm install
# Copying app
COPY index.* .
# Expose port 3001
EXPOSE 3001
# Defining Service port for frontend
ENV SERVICE_PORT 3001
# Setting up backend port
ENV BACKEND_PORT 3000
# Starting app
CMD ["node", "index.js"]