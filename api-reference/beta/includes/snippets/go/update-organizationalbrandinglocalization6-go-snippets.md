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
backgroundColor := "#00000F"
requestBody.SetBackgroundColor(&backgroundColor) 
signInPageText := "Welcome to Contoso France"
requestBody.SetSignInPageText(&signInPageText) 

localizations, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Localizations().ByOrganizationalBrandingLocalizationId("organizationalBrandingLocalization-id").Patch(context.Background(), requestBody, nil)


```