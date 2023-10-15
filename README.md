# Что сделано
С помощью docker desktop и VS Code + WSL:
1. Поднят инстанс PostgreSQL в docker.
2. Написан DDL для заданной структуры данных в SQL файл (createbd.sql).
3. Выполнена репликация.
4. Написан скрипт для подсчета GMV в виде view (createview.sql).

# Как запустить
1. docker-compose up --build
2. Добавить connection к db
   - user='postgres'
   - password='postgres'
   - host='localhost'
   - port='5432'
   - *Например, с помощью psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost', port='5432')
