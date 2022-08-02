---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExternalIdentitiesPolicy()
allowExternalIdentitiesToLeave := false
requestBody.SetAllowExternalIdentitiesToLeave(&allowExternalIdentitiesToLeave) 

graphClient.Policies().ExternalIdentitiesPolicy().Patch(requestBody)


```