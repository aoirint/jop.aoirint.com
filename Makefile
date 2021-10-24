.PHONY: backup
backup:
	docker-compose exec db pg_dump postgres --data-only --username postgres > backups/$(shell date '+%Y%m%d_%H%M%S').sql

