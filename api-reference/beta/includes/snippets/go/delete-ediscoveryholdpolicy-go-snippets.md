---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryHoldPolicyId := "ediscoveryHoldPolicy-id"
graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).LegalHoldsById(&ediscoveryHoldPolicyId).Delete()


```