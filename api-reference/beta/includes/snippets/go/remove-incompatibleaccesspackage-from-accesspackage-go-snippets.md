---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").IncompatibleAccessPackagesById("accessPackage-id1").$ref().Delete(context.Background(), nil)


```