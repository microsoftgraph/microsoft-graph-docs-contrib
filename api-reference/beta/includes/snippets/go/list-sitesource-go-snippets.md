---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryCustodianId := "ediscoveryCustodian-id"
result, err := graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).CustodiansById(&ediscoveryCustodianId).SiteSources().Get()


```