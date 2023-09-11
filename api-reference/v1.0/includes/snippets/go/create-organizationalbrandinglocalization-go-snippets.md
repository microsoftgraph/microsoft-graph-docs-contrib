---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOrganizationalBrandingLocalization()
backgroundColor := "#00000F"
requestBody.SetBackgroundColor(&backgroundColor) 
id := "fr-FR"
requestBody.SetId(&id) 
signInPageText := " "
requestBody.SetSignInPageText(&signInPageText) 

localizations, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Localizations().Post(context.Background(), requestBody, nil)


```