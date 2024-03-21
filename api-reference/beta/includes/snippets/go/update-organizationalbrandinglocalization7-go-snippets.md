---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOrganizationalBrandingLocalization()
signInPageText := "Welcome to Contoso France."
requestBody.SetSignInPageText(&signInPageText) 
usernameHintText := " "
requestBody.SetUsernameHintText(&usernameHintText) 

localizations, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Localizations().ByOrganizationalBrandingLocalizationId("organizationalBrandingLocalization-id").Patch(context.Background(), requestBody, nil)


```