---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewRegistrationPostRequestBody()
additionalData := map[string]interface{}{
	"allowedRegistrant" : "everyone", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().OnlineMeetingsById("onlineMeeting-id").Registration().Post(context.Background(), requestBody, nil)


```