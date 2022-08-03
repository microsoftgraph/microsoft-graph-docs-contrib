---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceUpdate()
"@odata.id" := "https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.ApplicationsById("application-id").ConnectorGroup().$ref().Put(requestBody)


```