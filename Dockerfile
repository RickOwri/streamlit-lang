# Use a slim version of Python 3.9 as the base image for arm64 architecture
FROM arm64v8/python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory and install the dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the contents of the current directory to the working directory in the container
COPY . .

# Expose port 8501 so that it can be accessed from outside the container
EXPOSE 8501

# Start the Streamlit app when the container starts
CMD ["streamlit", "run", "script/app.py", "--server.address", "0.0.0.0", "--server.port", "8501"]
