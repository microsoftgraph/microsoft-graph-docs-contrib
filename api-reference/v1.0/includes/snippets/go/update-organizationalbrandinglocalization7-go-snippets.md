---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOrganizationalBrandingLocalization()
signInPageText := "Welcome to Contoso France."
requestBody.SetSignInPageText(&signInPageText) 
usernameHintText := " "
requestBody.SetUsernameHintText(&usernameHintText) 

result, err := graphClient.OrganizationById("organization-id").Branding().LocalizationsById("organizationalBrandingLocalization-id").Patch(context.Background(), requestBody, nil)


```