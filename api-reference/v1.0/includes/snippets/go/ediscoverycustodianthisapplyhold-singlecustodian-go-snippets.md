---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").CustodiansById("ediscoveryCustodian-id").SecurityApplyHold().Post(context.Background(), nil)


```