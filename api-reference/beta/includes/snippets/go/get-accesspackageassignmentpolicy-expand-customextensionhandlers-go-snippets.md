---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageAssignmentPolicyRequestBuilderGetQueryParameters{
	Expand: [] string {"customExtensionHandlers($expand=customExtension)"},
}
configuration := &graphconfig.AccessPackageAssignmentPolicyRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPoliciesById("accessPackageAssignmentPolicy-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```