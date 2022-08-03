---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewColumnDefinition()
required := true
requestBody.SetRequired(&required) 
hidden := false
requestBody.SetHidden(&hidden) 
propagateChanges := false
requestBody.SetPropagateChanges(&propagateChanges) 

graphClient.SitesById("site-id").ContentTypesById("contentType-id").ColumnsById("columnDefinition-id").Patch(requestBody)


```