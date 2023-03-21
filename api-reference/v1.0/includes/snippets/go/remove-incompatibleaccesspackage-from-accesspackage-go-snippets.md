---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").IncompatibleAccessPackagesById("accessPackage-id1").Ref().Delete(context.Background(), nil)


```