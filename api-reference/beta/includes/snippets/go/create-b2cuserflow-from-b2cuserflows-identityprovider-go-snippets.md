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
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Location", "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')")

configuration := &graphidentity.IdentityB2cUserFlowsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewB2cIdentityUserFlow()
id := "Customer"
requestBody.SetId(&id) 
userFlowType := graphmodels.SIGNUPORSIGNIN_USERFLOWTYPE 
requestBody.SetUserFlowType(&userFlowType) 
userFlowTypeVersion := float32(3)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion) 


identityProvider := graphmodels.NewIdentityProvider()
id := "Facebook-OAuth"
identityProvider.SetId(&id) 

identityProviders := []graphmodels.IdentityProviderable {
	identityProvider,
}
requestBody.SetIdentityProviders(identityProviders)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
b2cUserFlows, err := graphClient.Identity().B2cUserFlows().Post(context.Background(), requestBody, configuration)


```