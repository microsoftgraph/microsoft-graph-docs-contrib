---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryReviewTag()
displayName := "My tag API"
requestBody.SetDisplayName(&displayName) 
description := "Use Graph API to create tags"
requestBody.SetDescription(&description) 
childSelectability := graphmodels.MANY_CHILDSELECTABILITY 
requestBody.SetChildSelectability(&childSelectability) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").Tags().Post(requestBody)


```