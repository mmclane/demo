// Hello world web server
package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "<h1>Hello World - by: Matt</h1>")
	})

	fmt.Println("Server is running on http://localhost:9080")
	http.ListenAndServe(":9080", nil)
}
