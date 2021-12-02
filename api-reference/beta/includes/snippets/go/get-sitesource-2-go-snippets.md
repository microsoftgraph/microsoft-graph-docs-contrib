---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

caseId := "case-id"
custodianId := "custodian-id"
siteSourceId := "siteSource-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).CustodiansById(&custodianId).SiteSourcesById(&siteSourceId).Get(options)


```