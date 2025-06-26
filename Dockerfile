
FROM python:3.10-slim

# working directory
WORKDIR /app

#install dependencies

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy project code
COPY . .

# expose port
EXPOSE 8000

# run the app
CMD ["python", "app.py"]
