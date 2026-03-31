FROM python:3.10-slim

WORKDIR /app

# Install dbt
RUN pip install dbt-bigquery

# Copy your dbt project
COPY . .

# Tell dbt to use local profiles.yml
ENV DBT_PROFILES_DIR=/app

# Install dependencies
RUN dbt deps

# Run dbt
CMD ["dbt", "build"]