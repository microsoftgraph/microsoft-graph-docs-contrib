---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewChangeScreenSharingRolePostRequestBody()
role := graphmodels.VIEWER_SCREENSHARINGROLE 
requestBody.SetRole(&role) 

graphClient.Communications().CallsById("call-id").ChangeScreenSharingRole().Post(context.Background(), requestBody, nil)


```