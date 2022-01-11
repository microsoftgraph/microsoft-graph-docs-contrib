---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackage()
displayName := "sales reps"
requestBody.SetDisplayName(&displayName)
description := "outside sales representatives"
requestBody.SetDescription(&description)
isHidden := false
requestBody.SetIsHidden(&isHidden)
catalog := msgraphsdk.NewAccessPackageCatalog()
requestBody.SetCatalog(catalog)
catalog.SetAdditionalData(map[string]interface{}{
	"id": "66584aae-98bb-48cc-9458-7bee5d2a6577",
}
options := &msgraphsdk.AccessPackagesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().Post(options)


```