Certainly, here's an updated README file that includes information about using Docker and GitLab for Flake8 testing:

# Langchain App

Welcome to the Langchain App repository! This app is designed to help you find YouTube videos that talk about a specific subject in various languages. It is deployed in a Docker container and is accessible both as a mobile app and a responsive webpage.

## Usage

### Running the App Locally

To run the app locally, you can use Streamlit. Make sure you have Streamlit installed. If not, you can install it using pip:

```bash
pip install streamlit
```

Then, run the following command to start the app:

```bash
streamlit run app.py
```

### Running the App in a Docker Container

Alternatively, you can run the app inside a Docker container. To do this, follow these steps:

1. Build the Docker image:

```bash
docker build -t langchain-app .
```

2. Run the Docker container, mapping port 8501 on your local machine to port 8501 in the container:

```bash
docker run -p 8501:8501 langchain-app
```

### Cleaning Up Docker Resources

To clean up Docker resources (containers and images), you can use the following commands:

- Remove all stopped containers:

```bash
docker container prune
```

- Remove all dangling (unused) images:

```bash
docker image prune
```

### Testing with Flake8 on GitLab

We use Docker and GitLab for Flake8 testing to ensure that the code adheres to coding standards and maintains consistency.

1. Our GitLab CI/CD pipeline is configured to run Flake8 checks automatically.

2. You can review the `.gitlab-ci.yml` file for more details on the configuration.

3. Any code quality issues found by Flake8 will be reported in GitLab's CI/CD pipeline results.

## Contact

If you have any questions, suggestions, or would like to learn more about the Langchain App, feel free to reach out to:

- DefaultUser (Coder)
- Email: [Your Email Address]
- LinkedIn: [Your LinkedIn Profile]
- GitHub: [Your GitHub Profile]

Thank you for exploring the Langchain App! We hope you find it useful and informative. Happy searching for YouTube videos on your specific subjects in different languages!
