---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {Token}")

configuration := &graphconfig.ServicePrincipalItemSynchronizationJobsRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Synchronization().Jobs().Get(context.Background(), configuration)


```