# Dockerfile עבור NetflixMovieCatalog

# השתמש בתמונה הבסיסית של Python
FROM python:3.9

# הגדר את ספריית העבודה בקונטיינר
WORKDIR /app

# העתק את קבצי התלויות
COPY requirements.txt ./

# התקן את התלויות
RUN pip install -r requirements.txt

# העתק את שאר הקבצים לתוך הקונטיינר
COPY . .

# חשוף את הפורט שבו היישום יפעל
EXPOSE 8080

# הפעל את היישום
CMD ["python", "app.py"]
