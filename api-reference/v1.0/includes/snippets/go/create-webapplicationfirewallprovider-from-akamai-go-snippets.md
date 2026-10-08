---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewWebApplicationFirewallProvider()
displayName := "Akamai Provider Example"
requestBody.SetDisplayName(&displayName) 
hostPrefix := "akab-exampleprefix"
requestBody.SetHostPrefix(&hostPrefix) 
clientSecret := "akamai_example_secret_123"
requestBody.SetClientSecret(&clientSecret) 
clientToken := "akamai_example_token_456"
requestBody.SetClientToken(&clientToken) 
accessToken := "akamai_example_token_789"
requestBody.SetAccessToken(&accessToken) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
webApplicationFirewallProviders, err := graphClient.Identity().RiskPrevention().WebApplicationFirewallProviders().Post(context.Background(), requestBody, nil)


```