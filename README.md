1. Развернуть сервера используя terraform (1_terraform)

2. Установить docker и необходимое ПО используя ansible (2_ansible)

3. Выполнить на управляющем узле (с интерфейсом 10.0.0.13) команду создания
docker swarm init --advertise-addr 10.0.0.13

4. На рабочих узлах выполнить команду которая выведена на экран при выполнении команды в пункте 1
docker swarm join --token ... 10.0.0.13:2377
где вместо ... указать токен из вывода команды 1

5. Установка стека приложений (3_docker_swarm)
docker stack deploy --compose-file docker-compose.yml demo

6. Расширить до двух реплик сервис demo_front-end
docker service scale demo_front-end=2

7. Полезные команды
docker info		- текущее состояние кластера
docker node ls		- cписок узлов
docker stack ls		- список стеков приложений
docker stack ps demo	- список экземпляров (тасков) в стеке
docker service ps demo_front-end	- список экземпляров (тасков) конкретного сервиса
docker stack services demo	- список сервисов в стеке (тот же результат командой docker service ls)

8. Удалить стек и созданные сервера
docker stack rm demo
terraform destroy