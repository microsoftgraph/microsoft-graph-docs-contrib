---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"displayName": "Connected organization name",
	"description": "Connected organization description",
	"identitySources":  []Object {
	}
	"state": "proposed",
}
options := &msgraphsdk.ConnectedOrganizationRequestBuilderPostOptions{
	Body: requestBody,
}
connectedOrganizationId := "connectedOrganization-id"
graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizationsById(&connectedOrganizationId).Post(options);


```