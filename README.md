docker build -t db_strapi .

docker run -d -p 5432:5432 --name db_strapi_cont db_strapi
