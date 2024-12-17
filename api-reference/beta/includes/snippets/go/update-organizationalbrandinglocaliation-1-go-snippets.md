---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphorganization "github.com/microsoftgraph/msgraph-beta-sdk-go/organization"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Accept-Language", "0")

configuration := &graphorganization.ItemBrandingRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOrganizationalBranding()
signInPageText := "Default"
requestBody.SetSignInPageText(&signInPageText) 
usernameHintText := "DefaultHint"
requestBody.SetUsernameHintText(&usernameHintText) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
branding, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Patch(context.Background(), requestBody, configuration)


```