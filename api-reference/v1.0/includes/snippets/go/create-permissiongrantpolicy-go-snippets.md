---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPermissionGrantPolicy()
id := "my-custom-consent-policy"
requestBody.SetId(&id)
displayName := "Custom application consent policy"
requestBody.SetDisplayName(&displayName)
description := "A custom permission grant policy to customize conditions for granting consent."
requestBody.SetDescription(&description)
options := &msgraphsdk.PermissionGrantPoliciesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Policies().PermissionGrantPolicies().Post(options);


```