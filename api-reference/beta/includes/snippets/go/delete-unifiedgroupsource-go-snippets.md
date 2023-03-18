---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").UnifiedGroupSourcesById("unifiedGroupSource-id").Delete(context.Background(), nil)


```