---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageResourceRequest()
catalogId := "de9315c1-272b-4905-924b-cc112ca180c7"
requestBody.SetCatalogId(&catalogId) 
accessPackageResource := graphmodels.NewAccessPackageResource()
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
additionalData := map[string]interface{}{
	"accessPackageResourceEnvironment@odata.bind" : "accessPackageResourceEnvironments/615f2218-678f-471f-a60a-02c2f4f80c57", 
}
accessPackageResource.SetAdditionalData(additionalData)
requestBody.SetAccessPackageResource(accessPackageResource)
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```