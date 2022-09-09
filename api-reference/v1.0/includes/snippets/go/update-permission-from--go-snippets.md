---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPermission()
roles := []string {
	"read",

}
requestBody.SetRoles(roles)

graphClient.SitesById("site-id").PermissionsById("permission-id").Patch(requestBody)


```