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

requestBody := graphmodels.NewAccessPackageResourceRoleScope()
accessPackageResourceRole := graphmodels.NewAccessPackageResourceRole()
id := "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e"
accessPackageResourceRole.SetId(&id) 
originId := "/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475"
accessPackageResourceRole.SetOriginId(&originId) 
displayName := "Access Review Operator Service Role"
accessPackageResourceRole.SetDisplayName(&displayName) 
description := "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process."
accessPackageResourceRole.SetDescription(&description) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := "c347ca9b-a9cc-4df9-bc3c-00c8e0297692"
accessPackageResource.SetId(&id) 
description := "test-mgmtgroup"
accessPackageResource.SetDescription(&description) 
displayName := "test-mgmtgroup"
accessPackageResource.SetDisplayName(&displayName) 
resourceType := "ManagementGroup"
accessPackageResource.SetResourceType(&resourceType) 
originId := "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AzureResources"
accessPackageResource.SetOriginSystem(&originSystem) 
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
originSystem := "AzureResources"
accessPackageResourceRole.SetOriginSystem(&originSystem) 
type := graphmodels.ELIGIBLE_ROLETYPE 
accessPackageResourceRole.SetType(&type) 
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceScope := graphmodels.NewAccessPackageResourceScope()
id := "338613b3-b410-4c6d-b5e9-45590bc8a357"
accessPackageResourceScope.SetId(&id) 
displayName := "Root"
accessPackageResourceScope.SetDisplayName(&displayName) 
description := "Root Scope"
accessPackageResourceScope.SetDescription(&description) 
originId := "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
accessPackageResourceScope.SetOriginId(&originId) 
originSystem := "AzureResources"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
isRootScope := true
accessPackageResourceScope.SetIsRootScope(&isRootScope) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageResourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```