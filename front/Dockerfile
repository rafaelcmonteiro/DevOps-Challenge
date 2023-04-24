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
# Starting app
CMD ["node", "index.js"]