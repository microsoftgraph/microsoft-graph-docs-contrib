---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPermission()
requestBody.SetRoles( []String {
	"write",
}
requestBody.SetGrantedToIdentities( []IdentitySet {
	msgraphsdk.NewIdentitySet(),
	SetAdditionalData(map[string]interface{}{
	}
}
options := &msgraphsdk.PermissionsRequestBuilderPostOptions{
	Body: requestBody,
}
siteId := "site-id"
result, err := graphClient.SitesById(&siteId).Permissions().Post(options)


```