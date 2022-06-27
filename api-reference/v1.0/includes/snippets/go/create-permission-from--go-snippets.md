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
application := msgraphsdk.NewIdentity()
	SetApplication(application)
id := "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
	application.SetId(&id)
displayName := "Contoso Time Manager App"
	application.SetDisplayName(&displayName)
}
siteId := "site-id"
result, err := graphClient.SitesById(&siteId).Permissions().Post(requestBody)


```