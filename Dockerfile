FROM python:3.12-slim

WORKDIR /app

# Install dependencies directly (no uv.lock needed)
COPY pyproject.toml .
RUN pip install uv && uv pip install --system .

# Copy code
COPY welcome.py .

CMD ["python", "welcome.py"]
