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

requestBody := graphmodels.NewOrganizationalBrandingTheme()
name := "ContosoTheme"
requestBody.SetName(&name) 
isDefaultTheme := true
requestBody.SetIsDefaultTheme(&isDefaultTheme) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
themes, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Themes().Post(context.Background(), requestBody, nil)


```