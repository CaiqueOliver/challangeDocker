# Desafio - DevOps Jr


## 1. Criar um Dockerfile para a aplicação
 
 - A aplicação é o `app.py`. O Docker tem que expor a porta `9555`. Queremos rodar o containr, acessar via broswer `http://localhost:9555` e receber a mensagem `Hello World - Python!`.


## 2. Criar terraform para realizar deploy de recursos na Azure

- Recursos necessários: 1x App Service, 1x Storage Account, 1x Container Registry;
- Utilizar os SKUs mais básicos (free tier);
- Adicione um identificador com seu nome e sobrenome para todos os recursos Azure criados. Ex: 'CRIADO-POR: JOAO SILVA'
- **IMPORTANTE:** Só queremos os arquivos terraform. Não é necessário criar os recursos em uma subscription sua.


## 3. Health check (opcional)

- Criar um health check no Docker para a aplicação na rota /healthz.


docker build -t devopschallange .

docker run -d -p 9555:9555 devopschallange