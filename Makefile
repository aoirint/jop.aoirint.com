.PHONY: backup
backup:
	docker-compose exec db pg_dump postgres --username postgres > backups/$(shell date '+%Y%m%d_%H%M%S').sql

.PHONY: backup-data-only
backup-data-only:
	docker-compose exec db pg_dump postgres --data-only --username postgres > backups/$(shell date '+%Y%m%d_%H%M%S')_data.sql

