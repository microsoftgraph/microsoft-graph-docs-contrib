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


requestBody := graphmodels.NewEducationCategory()
displayName := "Quizzes"
requestBody.SetDisplayName(&displayName) 

assignmentCategories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentCategories().Post(context.Background(), requestBody, nil)


```