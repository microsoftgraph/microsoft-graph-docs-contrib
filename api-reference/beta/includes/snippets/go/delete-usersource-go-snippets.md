---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").UserSourcesById("userSource-id").Delete(context.Background(), nil)


```