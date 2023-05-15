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


requestBody := graphmodels.NewEducationCategory()
displayName := "Quizzes"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").AssignmentCategories().Post(context.Background(), requestBody, nil)


```