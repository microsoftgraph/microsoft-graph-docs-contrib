---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewConnectedOrganization()
displayName := "Connected organization new name"
requestBody.SetDisplayName(&displayName)
description := "Connected organization new description"
requestBody.SetDescription(&description)
state := "configured"
requestBody.SetState(&state)
options := &msgraphsdk.ConnectedOrganizationRequestBuilderPatchOptions{
	Body: requestBody,
}
connectedOrganizationId := "connectedOrganization-id"
graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizationsById(&connectedOrganizationId).Patch(options);


```