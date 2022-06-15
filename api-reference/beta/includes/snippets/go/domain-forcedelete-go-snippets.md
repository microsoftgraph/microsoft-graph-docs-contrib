---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDisableUserAccountsRequestBody()
disableUserAccounts := true
requestBody.SetDisableUserAccounts(&disableUserAccounts)
domainId := "domain-id"
graphClient.DomainsById(&domainId).ForceDelete(domain-id).Post(requestBody)


```