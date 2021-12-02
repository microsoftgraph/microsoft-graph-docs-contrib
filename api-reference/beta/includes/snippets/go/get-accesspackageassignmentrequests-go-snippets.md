---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AccessPackageAssignmentRequestsRequestBuilderGetQueryParameters{
	Expand: "requestor($expand=connectedOrganization)",
	Filter: "(requestState%20eq%20'PendingApproval')",
}
options := &msgraphsdk.AccessPackageAssignmentRequestsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Get(options)


```