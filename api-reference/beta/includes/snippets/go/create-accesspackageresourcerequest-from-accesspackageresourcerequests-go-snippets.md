---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageResourceRequest()
catalogId := "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
requestBody.SetCatalogId(&catalogId)
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType)
justification := ""
requestBody.SetJustification(&justification)
accessPackageResource := msgraphsdk.NewAccessPackageResource()
requestBody.SetAccessPackageResource(accessPackageResource)
accessPackageResource.SetAdditionalData(map[string]interface{}{
	"displayName": "Sales",
	"description": "https://contoso.sharepoint.com/sites/Sales",
	"url": "https://contoso.sharepoint.com/sites/Sales",
	"resourceType": "SharePoint Online Site",
	"originId": "https://contoso.sharepoint.com/sites/Sales",
	"originSystem": "SharePointOnline",
}
options := &msgraphsdk.AccessPackageResourceRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(options)


```