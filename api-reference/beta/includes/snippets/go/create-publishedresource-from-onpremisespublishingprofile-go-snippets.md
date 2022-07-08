---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPublishedResource()
displayName := "New provisioning"
requestBody.SetDisplayName(&displayName)
resourceName := "domain1.contoso.com"
requestBody.SetResourceName(&resourceName)
onPremisesPublishingProfileId := "onPremisesPublishingProfile-id"
result, err := graphClient.OnPremisesPublishingProfilesById(&onPremisesPublishingProfileId).PublishedResources().Post(requestBody)


```