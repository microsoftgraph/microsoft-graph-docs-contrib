---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDocumentSetVersion()
comment := "v1"
requestBody.SetComment(&comment) 
shouldCaptureMinorVersion := false
requestBody.SetShouldCaptureMinorVersion(&shouldCaptureMinorVersion) 

result, err := graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").DocumentSetVersions().Post(requestBody)


```