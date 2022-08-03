---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").ConnectorGroupsById("connectorGroup-id").Members().$ref().Post(requestBody)


```