# lab-redes
Laboratório de Redes para disciplina de Laboratório de Redes

## Autor
Raí Rafael Santos Silva

## Execução
Realiza clone do Repositório e executa o comando 
```
docker build -t  dynaweb .
```
Para criação da imagem customizada.

Após a criação da imagem, utiliza o comando

```
docker run -d -p 63010:80 -it --rm --name dyna dynaweb
```

## Relatório

#### Teste de Execução
Após inicialização do Container, se fazer uso do comando
```
wget http://localhost:63010
```
será realizado o Download do arquivo index.html que representa a Landing Page da Empresa.

#### Observações
Não consegui configurar o NGINX conforme o Webquest Cliente e Servidor. Consegui realizar a configuração do NGINX conforme o Webquest somente em máquina local e funcionou a adição dos sites-available e sites-enabled.
O problema que obtive ao realizar a configuração do NGINX no Docker foi devido ao comando ``service`` não existir dentro do container, então não consegui realizar a configuração passo-a-passo conforme o Webquest.
Para realizar a configuração utilizei o link [How to Use the NGINX Docker Official Image](https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/) presente nas referências do WebQuest Docker.
