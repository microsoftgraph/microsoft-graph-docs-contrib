---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageResourceRequest()
catalogId := "de9315c1-272b-4905-924b-cc112ca180c7"
requestBody.SetCatalogId(&catalogId)
accessPackageResource := msgraphsdk.NewAccessPackageResource()
requestBody.SetAccessPackageResource(accessPackageResource)
displayName := "Community Outreach"
accessPackageResource.SetDisplayName(&displayName)
description := "https://contoso.sharepoint.com/sites/CSR"
accessPackageResource.SetDescription(&description)
resourceType := "SharePoint Online Site"
accessPackageResource.SetResourceType(&resourceType)
originId := "https://contoso.sharepoint.com/sites/CSR"
accessPackageResource.SetOriginId(&originId)
originSystem := "SharePointOnline"
accessPackageResource.SetOriginSystem(&originSystem)
accessPackageResourceEnvironment := msgraphsdk.NewAccessPackageResourceEnvironment()
accessPackageResource.SetAccessPackageResourceEnvironment(accessPackageResourceEnvironment)
originId := "https://contoso-admin.sharepoint.com/"
accessPackageResourceEnvironment.SetOriginId(&originId)
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType)
options := &msgraphsdk.AccessPackageResourceRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(options)


```