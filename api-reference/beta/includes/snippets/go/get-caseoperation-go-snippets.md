---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

ediscoveryCaseId := "ediscoveryCase-id"
caseOperationId := "caseOperation-id"
result, err := graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).OperationsById(&caseOperationId).Get()


```