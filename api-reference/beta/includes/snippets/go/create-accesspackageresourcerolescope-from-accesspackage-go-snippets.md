---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRoleScope()
accessPackageResourceRole := graphmodels.NewAccessPackageResourceRole()
originId := "Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca"
accessPackageResourceRole.SetOriginId(&originId) 
displayName := "Member"
accessPackageResourceRole.SetDisplayName(&displayName) 
originSystem := "AadGroup"
accessPackageResourceRole.SetOriginSystem(&originSystem) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := "1d08498d-72a1-403f-8511-6b1f875746a0"
accessPackageResource.SetId(&id) 
resourceType := "O365 Group"
accessPackageResource.SetResourceType(&resourceType) 
originId := "b31fe1f1-3651-488f-bd9a-1711887fd4ca"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResource.SetOriginSystem(&originSystem) 
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceScope := graphmodels.NewAccessPackageResourceScope()
originId := "b31fe1f1-3651-488f-bd9a-1711887fd4ca"
accessPackageResourceScope.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```