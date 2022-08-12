---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCrossTenantAccessPolicy()
allowedCloudEndpoints := []string {
	"microsoftonline.us",
	"partner.microsoftonline.cn",

}
requestBody.SetAllowedCloudEndpoints(allowedCloudEndpoints)

graphClient.Policies().CrossTenantAccessPolicy().Patch(requestBody)


```