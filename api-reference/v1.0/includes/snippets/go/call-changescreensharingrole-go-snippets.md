---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChangeScreenSharingRolePostRequestBody()
role := graphmodels.VIEWER_SCREENSHARINGROLE 
requestBody.SetRole(&role) 

graphClient.Communications().CallsById("call-id").MicrosoftGraphChangeScreenSharingRole().Post(context.Background(), requestBody, nil)


```