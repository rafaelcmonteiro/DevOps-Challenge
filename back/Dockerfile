FROM node:16

# Setting up workidr
WORKDIR /usr/src/app
# Copying json lock and dependencies packages
COPY package*.json ./
# Installing packages.
RUN npm install
# Copying app
COPY index.js .
# Expose port 3000
EXPOSE 3000
# Starting app
CMD ["node", "index.js"]