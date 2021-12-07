---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.PrivilegedRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: "isElevated%20eq%20true%20and%20expirationDateTime%20eq%20null",
}
options := &msgraphsdk.PrivilegedRoleAssignmentsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.PrivilegedRoleAssignments().Get(options)


```