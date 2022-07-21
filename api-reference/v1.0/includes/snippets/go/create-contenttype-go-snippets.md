---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContentType()
name := "docSet"
requestBody.SetName(&name) 
description := "custom docset"
requestBody.SetDescription(&description) 
base := graphmodels.Newbase()
name := "Document Set"
base.SetName(&name) 
id := "0x0120D520"
base.SetId(&id) 
requestBody.SetBase(base)
group := "Document Set Content Types"
requestBody.SetGroup(&group) 

result, err := graphClient.SitesById("site-id").ContentTypes().Post(requestBody)


```