---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPublishedResource()
displayName := "New provisioning"
requestBody.SetDisplayName(&displayName) 
resourceName := "domain1.contoso.com"
requestBody.SetResourceName(&resourceName) 

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").PublishedResources().Post(requestBody)


```