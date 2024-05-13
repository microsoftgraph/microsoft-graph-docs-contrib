---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRoleScope()
additionalData := map[string]interface{}{
role := graphmodels.New()
originId := "Eligible"
role.SetOriginId(&originId) 
displayName := "Eligible Member"
role.SetDisplayName(&displayName) 
originSystem := "DirectoryRole"
role.SetOriginSystem(&originSystem) 
resource := graphmodels.New()
id := "ea036095-57a6-4c90-a640-013edf151eb1"
resource.SetId(&id) 
	role.SetResource(resource)
	requestBody.SetRole(role)
scope := graphmodels.New()
description := "Root Scope"
scope.SetDescription(&description) 
displayName := "Root"
scope.SetDisplayName(&displayName) 
	isRootScope := true
scope.SetIsRootScope(&isRootScope) 
originSystem := "DirectoryRole"
scope.SetOriginSystem(&originSystem) 
originId := "c4e39bd9-1100-46d3-8c65-fb160da0071f"
scope.SetOriginId(&originId) 
	requestBody.SetScope(scope)
}
requestBody.SetAdditionalData(additionalData)

accessPackageResourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```