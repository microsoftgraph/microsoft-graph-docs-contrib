---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewTag()
description := "This is an updated description."
requestBody.SetDescription(&description) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").TagsById("tag-id").Patch(context.Background(), requestBody, nil)


```