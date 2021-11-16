---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

accessPackageAssignmentPolicyId := "accessPackageAssignmentPolicy-id"
graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPoliciesById(&accessPackageAssignmentPolicyId).Delete(options)


```