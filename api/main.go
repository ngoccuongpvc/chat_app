package main

import (
	"context"

	// "github.com/gin-gonic/gin"
	// "github.com/go-pg/pg"
	"github.com/go-pg/pg/v10"
	// "github.com/go-pg/pg/v10/orm"
)

func main() {
	// r := gin.Default()
	// r.GET("/ping", func(c *gin.Context) {
	// 	c.JSON(200, gin.H{
	// 		"message": "pong",
	// 	})
	// })
	// r.Run()

	opt, err := pg.ParseURL("postgresql://admin:admin@localhost:5432/chat-app?sslmode=disable")
	if err != nil {
		panic(err)
	}

	db := pg.Connect(opt)
	ctx := context.Background()
	_, err = db.ExecContext(ctx, "SELECT 1")
	if err != nil {
		println("Error")
		panic(err)
		// println("error")
	}
	println("Good connect")

}
