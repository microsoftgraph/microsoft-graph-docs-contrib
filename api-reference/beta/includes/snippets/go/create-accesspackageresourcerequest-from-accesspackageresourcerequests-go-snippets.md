---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageResourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```