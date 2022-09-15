---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConnectorGroup()
name := "name-value"
requestBody.SetName(&name) 
region := graphmodels.REGION-VALUE_CONNECTORGROUPREGION 
requestBody.SetRegion(&region) 

graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").ConnectorGroupsById("connectorGroup-id").Patch(context.Background(), requestBody, nil)


```