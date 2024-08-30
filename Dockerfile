        # Imagem base Python
        FROM python:3.12-alpine

        # Diretório de trabalho dentro do container
        WORKDIR /app

        # Copia os arquivos de requisitos
        COPY requirements.txt .

        # Instala as dependências
        RUN pip install --no-cache-dir -r requirements.txt

        # Copia o código da aplicação
        COPY . .

        # Porta que a aplicação irá utilizar
        EXPOSE 8000

        # Comando para iniciar o servidor Uvicorn
        CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]