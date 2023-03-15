---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").SourceCollectionsById("sourceCollection-id").CustodianSources().Get(context.Background(), nil)


```