# Systemd
## Загрузка системы. Systemd
1. Для начала создаём файл с конфигурацией для сервиса в директории  **/etc/sysconfig//watchlog**
2. Создадим скрипт: **/opt/watchlog.sh**
3. Добавим права на запуск файла:  **chmod +x /opt/watchlog.sh**
4. Создадим юнит для сервиса **(watchlog.service)** и Создадим юнит для таймера **(watchlog.timer)**   юниты создаем в **/etc/systemd/system/** 
5. **systemctl reload** - заново перечитать список сервисов
6. **systemctl start watchlog.timer**
7. **tail -f /var/log/messages** проверяем вывод, что все работает
8. ![alt text](./Pictures/1.png)


