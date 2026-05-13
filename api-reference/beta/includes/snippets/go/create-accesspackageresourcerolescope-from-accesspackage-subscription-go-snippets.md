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
id := "e1e0ec8c-472d-4ec5-a8f9-29e0bc275640"
accessPackageResourceScope.SetId(&id) 
description := "/resourceGroups/rg"
accessPackageResourceScope.SetDescription(&description) 
displayName := "/resourceGroups/rg"
accessPackageResourceScope.SetDisplayName(&displayName) 
isRootScope := false
accessPackageResourceScope.SetIsRootScope(&isRootScope) 
originSystem := "AzureResources"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/resourceGroups/rg"
accessPackageResourceScope.SetOriginId(&originId) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageResourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```