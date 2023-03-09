---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").NoncustodialDataSourcesById("ediscoveryNoncustodialDataSource-id").SecurityApplyHold().Post(context.Background(), nil)


```