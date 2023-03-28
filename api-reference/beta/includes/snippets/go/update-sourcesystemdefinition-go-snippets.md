---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewSourceSystemDefinition()
vendor := "LMS Vendor"
requestBody.SetVendor(&vendor) 

result, err := graphClient.External().IndustryData().SourceSystemsById("sourceSystemDefinition-id").Patch(context.Background(), requestBody, nil)


```