---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

siteId := "site-id"
richLongRunningOperationId := "richLongRunningOperation-id"
result, err := graphClient.SitesById(&siteId).OperationsById(&richLongRunningOperationId).Get(nil)


```