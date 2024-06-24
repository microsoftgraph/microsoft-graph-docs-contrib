---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessPackageResourceRoleScope()
role := graphmodels.NewAccessPackageResourceRole()
displayName := "Contributors"
role.SetDisplayName(&displayName) 
originSystem := "SharePointOnline"
role.SetOriginSystem(&originSystem) 
originId := "4"
role.SetOriginId(&originId) 
resource := graphmodels.NewAccessPackageResource()
id := "53c71803-a0a8-4777-aecc-075de8ee3991"
resource.SetId(&id) 
role.SetResource(resource)
requestBody.SetRole(role)
scope := graphmodels.NewAccessPackageResourceScope()
displayName := "Root"
scope.SetDisplayName(&displayName) 
description := "Root Scope"
scope.SetDescription(&description) 
originId := "https://contoso.sharepoint.com/portals/Community"
scope.SetOriginId(&originId) 
originSystem := "SharePointOnline"
scope.SetOriginSystem(&originSystem) 
isRootScope := true
scope.SetIsRootScope(&isRootScope) 
requestBody.SetScope(scope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").ResourceRoleScopes().Post(context.Background(), requestBody, nil)


```