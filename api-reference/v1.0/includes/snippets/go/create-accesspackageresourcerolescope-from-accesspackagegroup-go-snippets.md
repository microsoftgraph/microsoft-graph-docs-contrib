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
displayName := "Member"
role.SetDisplayName(&displayName) 
originSystem := "AadGroup"
role.SetOriginSystem(&originSystem) 
originId := "Member_0282e19d-bf41-435d-92a4-99bab93af305"
role.SetOriginId(&originId) 
resource := graphmodels.NewAccessPackageResource()
id := "b16e0e71-17b4-4ebd-a3cd-8a468542e418"
resource.SetId(&id) 
displayName := "example group"
resource.SetDisplayName(&displayName) 
description := "a group whose members are to be assigned via an access package"
resource.SetDescription(&description) 
originId := "0282e19d-bf41-435d-92a4-99bab93af305"
resource.SetOriginId(&originId) 
originSystem := "AadGroup"
resource.SetOriginSystem(&originSystem) 
role.SetResource(resource)
requestBody.SetRole(role)
scope := graphmodels.NewAccessPackageResourceScope()
id := "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c"
scope.SetId(&id) 
displayName := "Root"
scope.SetDisplayName(&displayName) 
description := "Root Scope"
scope.SetDescription(&description) 
originId := "0282e19d-bf41-435d-92a4-99bab93af305"
scope.SetOriginId(&originId) 
originSystem := "AadGroup"
scope.SetOriginSystem(&originSystem) 
isRootScope := true
scope.SetIsRootScope(&isRootScope) 
requestBody.SetScope(scope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").ResourceRoleScopes().Post(context.Background(), requestBody, nil)


```