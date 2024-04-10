# Verwende das offizielle Node.js 14-Image als Basisimage
FROM node:14

# Setze das Arbeitsverzeichnis im Container
WORKDIR /usr/src/app

# Kopiere die Abhängigkeitsdefinitionen in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest des Codes in das Arbeitsverzeichnis
COPY . .

# Öffne den Port, auf dem die Anwendung läuft
EXPOSE 8080

# Starte die Anwendung
CMD ["npm", "start"]
