---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCreateLinkPostRequestBody()
type := "edit"
requestBody.SetType(&type) 
scope := "organization"
requestBody.SetScope(&scope) 

result, err := graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").CreateLink().Post(requestBody)


```