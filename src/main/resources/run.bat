@echo off
setlocal

:: Читаем переменные из .env
for /f "usebackq tokens=1,* delims==" %%A in (".env") do (
    set %%A=%%B
)

:: Проверим, что переменные подставились
echo POSTGRES_USER=%POSTGRES_USER%
echo POSTGRES_PASSWORD=%POSTGRES_PASSWORD%

:: Запускаем Spring Boot через Windows-версию Maven Wrapper
mvnw.cmd spring-boot:run