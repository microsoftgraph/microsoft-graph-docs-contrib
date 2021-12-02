---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}",
}
options := &msgraphsdk.ConnectorGroupRequestBuilderPostOptions{
	Body: requestBody,
}
onPremisesPublishingProfileId := "onPremisesPublishingProfile-id"
connectorId := "connector-id"
connectorGroupId := "connectorGroup-id"
graphClient.OnPremisesPublishingProfilesById(&onPremisesPublishingProfileId).ConnectorsById(&connectorId).MemberOfById(&connectorGroupId).Post(options)


```