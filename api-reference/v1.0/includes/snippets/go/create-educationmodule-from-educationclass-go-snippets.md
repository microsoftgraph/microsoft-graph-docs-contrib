---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationModule()
displayName := "Module 1"
requestBody.SetDisplayName(&displayName) 
description := "Description for Module 1"
requestBody.SetDescription(&description) 

modules, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Modules().Post(context.Background(), requestBody, nil)


```