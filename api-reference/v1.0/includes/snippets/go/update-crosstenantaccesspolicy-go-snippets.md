---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCrossTenantAccessPolicy()
allowedCloudEndpoints := []string {
	"microsoftonline.us",

}
requestBody.SetAllowedCloudEndpoints(allowedCloudEndpoints)

result, err := graphClient.Policies().CrossTenantAccessPolicy().Patch(context.Background(), requestBody, nil)


```