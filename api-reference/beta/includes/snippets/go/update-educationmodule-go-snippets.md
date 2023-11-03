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


requestBody := graphmodels.NewEducationModule()
displayName := "New_Module5 updated"
requestBody.SetDisplayName(&displayName) 
description := "updated for description"
requestBody.SetDescription(&description) 

modules, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Modules().ByEducationModuleId("educationModule-id").Patch(context.Background(), requestBody, nil)


```