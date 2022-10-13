---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCustomAccessPackageWorkflowExtension()
additionalData := map[string]interface{}{
	"displayName" : "test_action_0124_email", 
	"description" : "this is for graph testing only", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById("accessPackageCatalog-id").CustomAccessPackageWorkflowExtensionsById("customAccessPackageWorkflowExtension-id").Put(context.Background(), requestBody, nil)


```