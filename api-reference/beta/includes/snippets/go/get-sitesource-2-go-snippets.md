---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").SiteSourcesById("siteSource-id").Get(context.Background(), nil)


```