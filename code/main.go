package main

func main() {
	a := App{}
	a.Initialize("root", "password", "mysql:3306", "rest_api_example")
	a.Run(":8080")
}
