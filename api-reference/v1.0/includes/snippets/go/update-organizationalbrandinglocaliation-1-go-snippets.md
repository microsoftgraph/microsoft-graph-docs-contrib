---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewOrganizationalBranding()
signInPageText := "Default"
requestBody.SetSignInPageText(&signInPageText)
usernameHintText := "DefaultHint"
requestBody.SetUsernameHintText(&usernameHintText)
headers := map[string]string{
	"Accept-Language": "0"
}
options := &msgraphsdk.BrandingRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
organizationId := "organization-id"
graphClient.OrganizationById(&organizationId).Branding().Patch(options)


```