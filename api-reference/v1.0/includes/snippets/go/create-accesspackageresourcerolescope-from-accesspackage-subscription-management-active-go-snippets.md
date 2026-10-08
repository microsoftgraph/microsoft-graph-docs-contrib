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
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475"
role.SetOriginId(&originId) 
displayName := "Access Review Operator Service Role"
role.SetDisplayName(&displayName) 
description := "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process."
role.SetDescription(&description) 
resource := graphmodels.NewAccessPackageResource()
id := "b09a0288-a83e-4ae6-8a53-bc09aeb966ea"
resource.SetId(&id) 
description := "Dev"
resource.SetDescription(&description) 
displayName := "Dev"
resource.SetDisplayName(&displayName) 
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
resource.SetOriginId(&originId) 
originSystem := "AzureResources"
resource.SetOriginSystem(&originSystem) 
additionalData := map[string]interface{}{
	"resourceType" : "Subscription", 
}
resource.SetAdditionalData(additionalData)
role.SetResource(resource)
originSystem := "AzureResources"
role.SetOriginSystem(&originSystem) 
type := graphmodels.ACTIVE_ROLETYPE 
role.SetType(&type) 
requestBody.SetRole(role)
scope := graphmodels.NewAccessPackageResourceScope()
id := "c66c1e22-1093-46fb-a8a8-c0e334113ca4"
scope.SetId(&id) 
description := "Root"
scope.SetDescription(&description) 
displayName := "Root"
scope.SetDisplayName(&displayName) 
isRootScope := true
scope.SetIsRootScope(&isRootScope) 
originSystem := "AzureResources"
scope.SetOriginSystem(&originSystem) 
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
scope.SetOriginId(&originId) 
requestBody.SetScope(scope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").ResourceRoleScopes().Post(context.Background(), requestBody, nil)


```