---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Policies().MobileDeviceManagementPoliciesById("mobilityManagementPolicy-id").IncludedGroupsById("group-id").Ref().Delete(context.Background(), nil)


```