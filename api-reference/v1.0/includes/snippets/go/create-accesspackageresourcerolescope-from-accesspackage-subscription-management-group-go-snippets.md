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
id := "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e"
role.SetId(&id) 
originId := "/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475"
role.SetOriginId(&originId) 
displayName := "Access Review Operator Service Role"
role.SetDisplayName(&displayName) 
description := "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process."
role.SetDescription(&description) 
resource := graphmodels.NewAccessPackageResource()
id := "c347ca9b-a9cc-4df9-bc3c-00c8e0297692"
resource.SetId(&id) 
description := "test-mgmtgroup"
resource.SetDescription(&description) 
displayName := "test-mgmtgroup"
resource.SetDisplayName(&displayName) 
originId := "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
resource.SetOriginId(&originId) 
originSystem := "AzureResources"
resource.SetOriginSystem(&originSystem) 
additionalData := map[string]interface{}{
	"resourceType" : "ManagementGroup", 
}
resource.SetAdditionalData(additionalData)
role.SetResource(resource)
originSystem := "AzureResources"
role.SetOriginSystem(&originSystem) 
type := graphmodels.ELIGIBLE_ROLETYPE 
role.SetType(&type) 
requestBody.SetRole(role)
scope := graphmodels.NewAccessPackageResourceScope()
id := "338613b3-b410-4c6d-b5e9-45590bc8a357"
scope.SetId(&id) 
displayName := "Root"
scope.SetDisplayName(&displayName) 
description := "Root Scope"
scope.SetDescription(&description) 
isRootScope := true
scope.SetIsRootScope(&isRootScope) 
originId := "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
scope.SetOriginId(&originId) 
originSystem := "AzureResources"
scope.SetOriginSystem(&originSystem) 
requestBody.SetScope(scope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").ResourceRoleScopes().Post(context.Background(), requestBody, nil)


```