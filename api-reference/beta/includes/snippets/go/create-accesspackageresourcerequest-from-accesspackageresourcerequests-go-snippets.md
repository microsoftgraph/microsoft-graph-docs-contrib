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
catalogId := "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
requestBody.SetCatalogId(&catalogId) 
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 
justification := ""
requestBody.SetJustification(&justification) 
accessPackageResource := graphmodels.NewAccessPackageResource()
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

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```