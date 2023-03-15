---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewGroup()
displayName := "myGroup"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.SitesById("site-id").TermStore().Groups().Post(context.Background(), requestBody, nil)


```