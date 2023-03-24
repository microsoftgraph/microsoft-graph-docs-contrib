---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").LegalHoldsById("legalHold-id").SiteSources().Get(context.Background(), nil)


```