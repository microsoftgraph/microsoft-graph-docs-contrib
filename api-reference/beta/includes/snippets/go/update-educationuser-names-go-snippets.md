---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationUser()
displayName := "Rogelio Cazares"
requestBody.SetDisplayName(&displayName) 
givenName := "Rogelio"
requestBody.SetGivenName(&givenName) 
middleName := "Fernando"
requestBody.SetMiddleName(&middleName) 
surname := "Cazares"
requestBody.SetSurname(&surname) 

result, err := graphClient.Education().Users().ByUserId("educationUser-id").Patch(context.Background(), requestBody, nil)


```