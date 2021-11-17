---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAccessPackage()
displayName := "Access Package New Name"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.AccessPackageRequestBuilderPatchOptions{
	Body: requestBody,
}
accessPackageId := "accessPackage-id"
graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById(&accessPackageId).Patch(options)


```