---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOrganizationalBrandingLocalization()
signInPageText := "Welcome to Contoso France."
requestBody.SetSignInPageText(&signInPageText) 
usernameHintText := " "
requestBody.SetUsernameHintText(&usernameHintText) 

result, err := graphClient.Organization().ByOrganization().Id("organization-id").Branding().Localizations().ByLocalizationId("organizationalBrandingLocalization-id").Patch(context.Background(), requestBody, nil)


```