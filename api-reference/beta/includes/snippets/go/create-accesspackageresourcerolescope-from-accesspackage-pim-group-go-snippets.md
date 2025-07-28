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
originId := "EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18"
accessPackageResourceRole.SetOriginId(&originId) 
displayName := "Eligible Member"
accessPackageResourceRole.SetDisplayName(&displayName) 
originSystem := "AadGroup"
accessPackageResourceRole.SetOriginSystem(&originSystem) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := "b86a1828-3171-409e-8343-32a224f324a0"
accessPackageResource.SetId(&id) 
resourceType := "O365 Group"
accessPackageResource.SetResourceType(&resourceType) 
originId := "bcfae74a-91a6-46e9-99bf-89d6487cc3f3"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResource.SetOriginSystem(&originSystem) 
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceScope := graphmodels.NewAccessPackageResourceScope()
originId := "bcfae74a-91a6-46e9-99bf-89d6487cc3f3"
accessPackageResourceScope.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageResourceRoleScopes, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```