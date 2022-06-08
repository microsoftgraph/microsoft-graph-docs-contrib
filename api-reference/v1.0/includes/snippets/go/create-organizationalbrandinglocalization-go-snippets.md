---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOrganizationalBrandingLocalization()
backgroundColor := "#00000F"
requestBody.SetBackgroundColor(&backgroundColor)
id := "fr-FR"
requestBody.SetId(&id)
signInPageText := " "
requestBody.SetSignInPageText(&signInPageText)
organizationId := "organization-id"
result, err := graphClient.OrganizationById(&organizationId).Branding().Localizations().Post(requestBody)


```