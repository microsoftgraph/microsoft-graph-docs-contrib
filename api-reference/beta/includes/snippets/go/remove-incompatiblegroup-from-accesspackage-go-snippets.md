---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

accessPackageId := "accessPackage-id"
groupId := "group-id"
graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById(&accessPackageId).IncompatibleGroupsById(&groupId).$ref().Delete()


```