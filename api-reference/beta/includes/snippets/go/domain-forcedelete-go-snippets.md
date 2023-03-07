---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewForceDeletePostRequestBody()
disableUserAccounts := true
requestBody.SetDisableUserAccounts(&disableUserAccounts) 

graphClient.DomainsById("domain-id").ForceDelete().Post(context.Background(), requestBody, nil)


```