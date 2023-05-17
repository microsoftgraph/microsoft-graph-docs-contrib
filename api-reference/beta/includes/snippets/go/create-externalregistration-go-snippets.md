---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/OnlineMeetings/Item/Registration"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRegistrationPostRequestBody()
additionalData := map[string]interface{}{
	"allowedRegistrant" : "everyone", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Post(context.Background(), requestBody, nil)


```