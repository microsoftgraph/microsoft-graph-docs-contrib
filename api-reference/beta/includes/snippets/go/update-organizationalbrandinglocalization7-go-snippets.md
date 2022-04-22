---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOrganizationalBrandingLocalization()
signInPageText := "Welcome to Contoso France."
requestBody.SetSignInPageText(&signInPageText)
usernameHintText := " "
requestBody.SetUsernameHintText(&usernameHintText)
options := &msgraphsdk.OrganizationalBrandingLocalizationRequestBuilderPatchOptions{
	Body: requestBody,
}
organizationId := "organization-id"
organizationalBrandingLocalizationId := "organizationalBrandingLocalization-id"
graphClient.OrganizationById(&organizationId).Branding().LocalizationsById(&organizationalBrandingLocalizationId).Patch(options)


```