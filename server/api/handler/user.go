package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/wzslr321/artiver/api/presenter"
	"github.com/wzslr321/artiver/entity"
	"log"
	"net/http"
)


func CreateUser(ctx *gin.Context) {

		var json presenter.Register
		if err := ctx.ShouldBindJSON(&json); err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{
				"error": err.Error(),
			})
			return
		}

		user, err := entity.NewUser(json.Email, json.Username, json.Password)
		if err != nil {
			log.Fatalf("Failed to create a new user: %v", err)
			return
		}


		ctx.JSON(http.StatusOK, gin.H{
			"message":"Successfully created new user",
			"user": user,
		})
}