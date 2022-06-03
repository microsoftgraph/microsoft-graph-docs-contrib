---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewReferenceUpdateSchema()
@odata.id := "https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}"
requestBody.Set@odata.id(&@odata.id)
applicationId := "application-id"
graphClient.ApplicationsById(&applicationId).ConnectorGroup().$ref().Put(requestBody)


```