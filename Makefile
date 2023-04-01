db: main.c
	gcc -std=c17 -o db main.c

run: db
	./db mydb.db

clean:
	rm -f db *.db

format: *.c
	clang-format -style=Google -i *.c