---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageCatalog()
displayName := "sales"
requestBody.SetDisplayName(&displayName) 
description := "for employees working with sales and outside sales partners"
requestBody.SetDescription(&description) 
isExternallyVisible := true
requestBody.SetIsExternallyVisible(&isExternallyVisible) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().Post(context.Background(), requestBody, nil)


```