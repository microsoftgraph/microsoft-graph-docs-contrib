---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewChangeScreenSharingRolePostRequestBody()
role := graphmodels.VIEWER_SCREENSHARINGROLE 
requestBody.SetRole(&role) 

graphClient.Communications().Calls().ByCallId("call-id").ChangeScreenSharingRole().Post(context.Background(), requestBody, nil)


```