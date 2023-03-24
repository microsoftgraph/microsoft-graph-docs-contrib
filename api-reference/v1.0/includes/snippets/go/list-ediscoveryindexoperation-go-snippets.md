---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").CustodiansById("ediscoveryCustodian-id").LastIndexOperation().Get(context.Background(), nil)


```