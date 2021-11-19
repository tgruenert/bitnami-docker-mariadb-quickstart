# bitnami-docker-mariadb-quickstart
bitnami-docker-mariadb without forcing a mysql_upgrade

Startup of mariadb can take a relevant amount of time if starting with
* many database with
* many tables
* and / or a slow storage.

Bitnami container forces a full mysql_upgrade process each time it starts. The more user data database contains, the longer it takes.

This image remove the `--force` - option. So configuring via my_custom.cnf is possible.

See relevant issues and conversation:
* <https://jira.mariadb.org/browse/MDEV-27060>
* <https://github.com/bitnami/bitnami-docker-mariadb/issues/252>
and a discussion about some insights at 
* <https://github.com/MariaDB/mariadb-docker/issues/350>