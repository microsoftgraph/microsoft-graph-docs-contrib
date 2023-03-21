---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewApplication()
displayName := "New display name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.ApplicationsById("application-id").Patch(context.Background(), requestBody, nil)


```