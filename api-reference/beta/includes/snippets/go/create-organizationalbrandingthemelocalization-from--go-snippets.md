---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOrganizationalBrandingThemeLocalization()
locale := "fr-FR"
requestBody.SetLocale(&locale) 
headerBackgroundColor := "#3377ffff"
requestBody.SetHeaderBackgroundColor(&headerBackgroundColor) 
pageBackgroundColor := "#FFFF33"
requestBody.SetPageBackgroundColor(&pageBackgroundColor) 
signInPageText := "Welcome to Contoso"
requestBody.SetSignInPageText(&signInPageText) 
usernameHintText := "ContosoUsername "
requestBody.SetUsernameHintText(&usernameHintText) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
localizations, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Themes().ByOrganizationalBrandingThemeId("organizationalBrandingTheme-id").Localizations().Post(context.Background(), requestBody, nil)


```