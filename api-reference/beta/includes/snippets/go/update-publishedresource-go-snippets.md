---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPublishedResource()
displayName := "Demo provisioning (updated)"
requestBody.SetDisplayName(&displayName) 

graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").PublishedResourcesById("publishedResource-id").Patch(requestBody)


```