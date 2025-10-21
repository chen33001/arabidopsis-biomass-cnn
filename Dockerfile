# ------------------------------------------------------------
# Arabidopsis Biomass CNN – Dockerfile
# Reproducible environment for CNN-based biomass estimation
# ------------------------------------------------------------

FROM python:3.12-slim

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git wget curl build-essential python3-opencv ffmpeg libsm6 libxext6 && \
    rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose Streamlit port
EXPOSE 8501

# Set Streamlit to run without asking for browser
ENV STREAMLIT_SERVER_HEADLESS=true

# Default command: launch GUI
CMD ["streamlit", "run", "app/gui_app.py", "--server.port=8501", "--server.address=0.0.0.0"]
