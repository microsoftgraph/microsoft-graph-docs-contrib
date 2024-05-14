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


requestBody := graphmodels.NewEducationGradingScheme()
displayName := "New GradingScheme name"
requestBody.SetDisplayName(&displayName) 

gradingSchemes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().GradingSchemes().ByEducationGradingSchemeId("educationGradingScheme-id").Patch(context.Background(), requestBody, nil)


```