---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/Item/ChangeScreenSharingRole"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewChangeScreenSharingRolePostRequestBody()
role := graphmodels.VIEWER_SCREENSHARINGROLE 
requestBody.SetRole(&role) 

graphClient.Communications().Calls().ByCallId("call-id").ChangeScreenSharingRole().Post(context.Background(), requestBody, nil)


```