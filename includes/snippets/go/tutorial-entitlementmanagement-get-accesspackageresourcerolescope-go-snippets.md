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
originId := "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487"
accessPackageResourceRole.SetOriginId(&originId) 
displayName := "Member"
accessPackageResourceRole.SetDisplayName(&displayName) 
originSystem := "AadGroup"
accessPackageResourceRole.SetOriginSystem(&originSystem) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := "4a1e21c5-8a76-4578-acb1-641160e076e8"
accessPackageResource.SetId(&id) 
resourceType := "Security Group"
accessPackageResource.SetResourceType(&resourceType) 
originId := "e93e24d1-2b65-4a6c-a1dd-654a12225487"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResource.SetOriginSystem(&originSystem) 
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceScope := graphmodels.NewAccessPackageResourceScope()
originId := "e93e24d1-2b65-4a6c-a1dd-654a12225487"
accessPackageResourceScope.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").AccessPackageResourceRoleScopes().Post(context.Background(), requestBody, nil)


```