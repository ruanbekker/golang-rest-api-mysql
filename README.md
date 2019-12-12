# golang-rest-api-mysql
Golang REST API with MySQL. Credit to [kelvins](https://github.com/kelvins/GoApiTutorial)

## Usage

```
$ docker build -t ruanbekker/godemo:v1 .
```

Build:

```
$ go build -o app
```

Test:

```
$ go test -v
=== RUN   TestEmptyTable
--- PASS: TestEmptyTable (0.01s)
=== RUN   TestGetNonExistentUser
--- PASS: TestGetNonExistentUser (0.02s)
=== RUN   TestCreateUser
--- PASS: TestCreateUser (0.02s)
=== RUN   TestGetUser
--- PASS: TestGetUser (0.03s)
=== RUN   TestUpdateUser
--- PASS: TestUpdateUser (0.03s)
=== RUN   TestDeleteUser
--- PASS: TestDeleteUser (0.03s)
PASS
ok  	_/go/godemo	0.157s
```

Run:

```
$ ./app &

# create a user:
$ curl -XPOST http://localhost:8080/user -d '{"name": "ruan", "age": 28}'
{"id":1,"name":"ruan","age":28}

# get all users:
$ curl -s http://localhost:8080/users
[{"id":1,"name":"ruan","age":28}]

# get a single user:
$ curl -s http://localhost:8080/user/1
{"id":1,"name":"ruan","age":28}

# update a user:
$ curl -XPUT http://localhost:8080/user/1 -d '{"name": "ruan", "age": 30}'
{"id":1,"name":"ruan","age":30}

# delete a user:
$ curl -XDELETE http://localhost:8080/user/1
{"result":"success"}
```
