---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").IncompatibleAccessPackages().$ref().Post(requestBody)


```