---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/EntitlementManagement/AccessPackageCatalogs/Item/AccessPackageCustomWorkflowExtensions/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageCustomWorkflowExtension()
additionalData := map[string]interface{}{
	"displayName" : "test_action_0124_email", 
	"description" : "this is for graph testing only", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageCustomWorkflowExtensions().ByAccessPackageCustomWorkflowExtensionId("customCalloutExtension-id").Put(context.Background(), requestBody, nil)


```