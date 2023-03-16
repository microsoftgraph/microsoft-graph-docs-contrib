---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewOrganizationalBrandingLocalization()
backgroundColor := "#00000F"
requestBody.SetBackgroundColor(&backgroundColor) 
id := "fr-FR"
requestBody.SetId(&id) 
signInPageText := " "
requestBody.SetSignInPageText(&signInPageText) 

result, err := graphClient.OrganizationById("organization-id").Branding().Localizations().Post(context.Background(), requestBody, nil)


```