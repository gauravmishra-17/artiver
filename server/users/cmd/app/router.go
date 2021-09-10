package main

import (
	"github.com/gin-gonic/gin"
	cors "github.com/rs/cors/wrapper/gin"
)


func (app *application) InitRouter() *gin.Engine {
	r := gin.New()

	r.Use(gin.Recovery())
	r.Use(cors.Default())

	user := r.Group("/api/users")
	{
		user.POST("/add", app.createUser)
		user.GET("/:username", app.getUserByUsername)
		user.PUT("/", app.updateUser)
		user.DELETE("/", app.deleteUserById)
	}

	return r
}
