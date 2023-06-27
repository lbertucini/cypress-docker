# Use uma imagem base do Node.js com a versão desejada
FROM cypress/browsers:node-18.16.0-chrome-114.0.5735.133-1-ff-114.0.2-edge-114.0.1823.51-1
#FROM cypress/included:12.15.0

# Defina o diretório de trabalho na imagem
WORKDIR /app

# Copie os arquivos do projeto Cypress para o diretório de trabalho
COPY . .

RUN npm install

RUN apt-get update && apt-get install -y xvfb

# Configura o Xvfb



CMD Xvfb :99 -screen 0 1024x768x16 & npx cypress run

# Execute o caso de teste do Cypress
#CMD ["npx", "cypress", "run"]
