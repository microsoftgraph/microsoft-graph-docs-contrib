---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageResourceRequest()
catalogId := "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
requestBody.SetCatalogId(&catalogId) 
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 
justification := ""
requestBody.SetJustification(&justification) 
accessPackageResource := graphmodels.NewaccessPackageResource()
displayName := "Sales"
accessPackageResource.SetDisplayName(&displayName) 
description := "https://contoso.sharepoint.com/sites/Sales"
accessPackageResource.SetDescription(&description) 
url := "https://contoso.sharepoint.com/sites/Sales"
accessPackageResource.SetUrl(&url) 
resourceType := "SharePoint Online Site"
accessPackageResource.SetResourceType(&resourceType) 
originId := "https://contoso.sharepoint.com/sites/Sales"
accessPackageResource.SetOriginId(&originId) 
originSystem := "SharePointOnline"
accessPackageResource.SetOriginSystem(&originSystem) 
requestBody.SetAccessPackageResource(accessPackageResource)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(requestBody)


```