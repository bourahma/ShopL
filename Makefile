runDB:
	docker run --name shoploc-db-container -e POSTGRES_USER=shoplocU -e POSTGRES_PASSWORD=shoplocP -e POSTGRES_DB=shoploc-db -d -p 5432:5432 postgres

stopDB:
	docker stop shoploc-db-container

restartDB:
	docker restart shoploc-db-container

runAPP:
	mvn spring-boot:run

clean:
	mvn clean

run:
	runDB
	runAPP

stop:
	stopDB
