---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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
accessPackageResourceEnvironment := graphmodels.NewAccessPackageResourceEnvironment()
originId := "https://contoso-admin.sharepoint.com/"
accessPackageResourceEnvironment.SetOriginId(&originId) 
accessPackageResource.SetAccessPackageResourceEnvironment(accessPackageResourceEnvironment)
requestBody.SetAccessPackageResource(accessPackageResource)
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```