---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Policies().MobileDeviceManagementPoliciesById("mobilityManagementPolicy-id").IncludedGroupsById("group-id").$ref().Delete(context.Background(), nil)


```