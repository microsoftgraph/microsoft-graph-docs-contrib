---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConnectorGroup()
name := "Connector Group Demo"
requestBody.SetName(&name) 

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").ConnectorGroups().Post(requestBody)


```