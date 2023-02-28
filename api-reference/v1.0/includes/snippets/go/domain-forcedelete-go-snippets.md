---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewForceDeletePostRequestBody()
disableUserAccounts := true
requestBody.SetDisableUserAccounts(&disableUserAccounts) 

graphClient.DomainsById("domain-id").MicrosoftGraphForceDelete().Post(context.Background(), requestBody, nil)


```