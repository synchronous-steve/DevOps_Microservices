FROM python:3.7.3-stretch

# Define workspace directory
WORKDIR /app_space

# Copy applicatioon file to workspace directory
COPY . /app_space

ENV PIP_NO_CACHE_DIR=1

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install  --upgrade pip &&\
    pip install  --trusted-host pypi.python.org -r requirements.txt

# Expose port
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]

