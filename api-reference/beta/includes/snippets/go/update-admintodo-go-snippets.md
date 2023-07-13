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


requestBody := graphmodels.NewAdminTodo()
settings := graphmodels.NewTodoSettings()
isPushNotificationEnabled := true
settings.SetIsPushNotificationEnabled(&isPushNotificationEnabled) 
isExternalJoinEnabled := false
settings.SetIsExternalJoinEnabled(&isExternalJoinEnabled) 
isExternalShareEnabled := true
settings.SetIsExternalShareEnabled(&isExternalShareEnabled) 
requestBody.SetSettings(settings)

result, err := graphClient.Admin().Todo().Patch(context.Background(), requestBody, nil)


```