# Usage
- Create secret key `docker-compose run --rm config config generate-secret-key`
- Sentry upgrade and database migrations `docker-compose run --rm sentry upgrade`
- Run full stack `docker-compose up -d`
- Create superuser `docker run -it --rm -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-redis:redis --link sentry-postgres:postgres sentry createuser`