---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewHomeRealmDiscoveryPolicy()
requestBody.SetDefinition( []String {
	"definition-value",
}
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault)
options := &msgraphsdk.HomeRealmDiscoveryPoliciesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Policies().HomeRealmDiscoveryPolicies().Post(options)


```