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
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475"
accessPackageResourceRole.SetOriginId(&originId) 
displayName := "Access Review Operator Service Role"
accessPackageResourceRole.SetDisplayName(&displayName) 
description := "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process."
accessPackageResourceRole.SetDescription(&description) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := "b09a0288-a83e-4ae6-8a53-bc09aeb966ea"
accessPackageResource.SetId(&id) 
description := "Dev"
accessPackageResource.SetDescription(&description) 
displayName := "Dev"
accessPackageResource.SetDisplayName(&displayName) 
resourceType := "Subscription"
accessPackageResource.SetResourceType(&resourceType) 
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AzureResources"
accessPackageResource.SetOriginSystem(&originSystem) 
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
originSystem := "AzureResources"
accessPackageResourceRole.SetOriginSystem(&originSystem) 
additionalData := map[string]interface{}{
	"type" : "active", 
}
accessPackageResourceRole.SetAdditionalData(additionalData)
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceScope := graphmodels.NewAccessPackageResourceScope()
id := "c66c1e22-1093-46fb-a8a8-c0e334113ca4"
accessPackageResourceScope.SetId(&id) 
description := "Root"
accessPackageResourceScope.SetDescription(&description) 
displayName := "Root"
accessPackageResourceScope.SetDisplayName(&displayName) 
isRootScope := true
accessPackageResourceScope.SetIsRootScope(&isRootScope) 
originSystem := "AzureResources"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
accessPackageResourceScope.SetOriginId(&originId) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageResourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```