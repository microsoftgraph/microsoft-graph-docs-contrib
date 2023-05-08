---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationClass()
description := "History - World History 1"
requestBody.SetDescription(&description) 
displayName := "World History Level 1"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Patch(context.Background(), requestBody, nil)


```