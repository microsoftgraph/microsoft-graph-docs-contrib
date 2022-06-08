---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

mobilityManagementPolicyId := "mobilityManagementPolicy-id"
groupId := "group-id"
graphClient.Policies().MobileDeviceManagementPoliciesById(&mobilityManagementPolicyId).IncludedGroupsById(&groupId).$ref().Delete()


```