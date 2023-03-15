---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewConnectorGroup()
name := "name-value"
requestBody.SetName(&name) 
isDefault := false
requestBody.SetIsDefault(&isDefault) 

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").ConnectorGroups().Post(context.Background(), requestBody, nil)


```