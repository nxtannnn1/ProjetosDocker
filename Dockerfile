# Usar imagem base NGINX
FROM nginx:alpine
# Remover configuração padrão
RUN rm -rf /usr/share/nginx/html/*
# Copiar arquivos do projeto para dentro do container
COPY . /usr/share/nginx/html
# Expor a porta
EXPOSE 80
# Iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]