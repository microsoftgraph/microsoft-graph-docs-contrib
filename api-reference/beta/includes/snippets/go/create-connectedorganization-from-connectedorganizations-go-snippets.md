---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewConnectedOrganization()
displayName := "Connected organization name"
requestBody.SetDisplayName(&displayName)
description := "Connected organization description"
requestBody.SetDescription(&description)
requestBody.SetIdentitySources( []IdentitySource {
	msgraphsdk.NewIdentitySource(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.domainIdentitySource",
		"domainName": "example.com",
		"displayName": "example.com",
	}
}
state := "proposed"
requestBody.SetState(&state)
options := &msgraphsdk.ConnectedOrganizationsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizations().Post(options)


```