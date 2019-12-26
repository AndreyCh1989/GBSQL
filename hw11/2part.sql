1.
HINCRBY IP '192.168.1.1' 1
HGETALL IP

2.
HSET 'Andrey' 'andrey@mail.ru' - добавляем запись
HGET 'Andrey' - получаем почту

и наоборот
HSET 'andrey@mail.ru' 'Andrey' - добавляем запись
HGET 'andrey@mail.ru' - получаем имя

3.
