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
id := "cde82ecb-e461-496b-98fb-4f807c7ca640"
role.SetId(&id) 
displayName := "Standard User"
role.SetDisplayName(&displayName) 
description := "Standard User"
role.SetDescription(&description) 
originSystem := "AadApplication"
role.SetOriginSystem(&originSystem) 
originId := "a29a7690-b3c4-4ed5-96c6-f640cde06fb8"
role.SetOriginId(&originId) 
resource := graphmodels.NewAccessPackageResource()
id := "5f80c0c7-a180-4521-b585-18200048a0d8"
resource.SetId(&id) 
originId := "e81d7f57-0840-45e1-894b-f505c1bdcc1f"
resource.SetOriginId(&originId) 
originSystem := "AadApplication"
resource.SetOriginSystem(&originSystem) 
role.SetResource(resource)
requestBody.SetRole(role)
scope := graphmodels.NewAccessPackageResourceScope()
id := "dbeb8772-9907-4e95-a28e-a8d70dbcda69"
scope.SetId(&id) 
originId := "e81d7f57-0840-45e1-894b-f505c1bdcc1f"
scope.SetOriginId(&originId) 
originSystem := "AadApplication"
scope.SetOriginSystem(&originSystem) 
isRootScope := true
scope.SetIsRootScope(&isRootScope) 
requestBody.SetScope(scope)

resourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").ResourceRoleScopes().Post(context.Background(), requestBody, nil)


```