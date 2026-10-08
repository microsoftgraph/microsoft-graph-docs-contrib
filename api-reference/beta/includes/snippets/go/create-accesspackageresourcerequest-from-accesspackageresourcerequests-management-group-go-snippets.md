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
catalogId := "e8368470-afaf-44da-ba86-13a7318f1995"
requestBody.SetCatalogId(&catalogId) 
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 
justification := ""
requestBody.SetJustification(&justification) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := ""
accessPackageResource.SetId(&id) 
displayName := "test-mgmtgroup"
accessPackageResource.SetDisplayName(&displayName) 
description := "test-mgmtgroup"
accessPackageResource.SetDescription(&description) 
resourceType := "ManagementGroup"
accessPackageResource.SetResourceType(&resourceType) 
originId := "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AzureResources"
accessPackageResource.SetOriginSystem(&originSystem) 
requestBody.SetAccessPackageResource(accessPackageResource)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageResourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```