---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPublishedResource()
displayName := "New provisioning"
requestBody.SetDisplayName(&displayName) 
resourceName := "domain1.contoso.com"
requestBody.SetResourceName(&resourceName) 

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").PublishedResources().Post(context.Background(), requestBody, nil)


```