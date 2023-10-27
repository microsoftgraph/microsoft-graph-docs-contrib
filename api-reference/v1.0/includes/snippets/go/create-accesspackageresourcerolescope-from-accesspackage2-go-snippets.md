---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRoleScope()
role := graphmodels.NewAccessPackageResourceRole()
id := "6646a29e-da03-49f6-bcd9-dec124492de3"
role.SetId(&id) 
displayName := "Contributors"
role.SetDisplayName(&displayName) 
description := null
role.SetDescription(&description) 
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
id := "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33"
scope.SetId(&id) 
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

resourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").ResourceRoleScopes().Post(context.Background(), requestBody, nil)


```