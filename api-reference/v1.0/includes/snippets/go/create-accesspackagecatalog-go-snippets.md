---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageCatalog()
displayName := "sales"
requestBody.SetDisplayName(&displayName)
description := "for employees working with sales and outside sales partners"
requestBody.SetDescription(&description)
state := "published"
requestBody.SetState(&state)
isExternallyVisible := true
requestBody.SetIsExternallyVisible(&isExternallyVisible)
options := &msgraphsdk.CatalogsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().Post(options)


```