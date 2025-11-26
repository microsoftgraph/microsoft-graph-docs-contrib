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

requestBody := graphmodels.NewWebApplicationFirewallProvider()
displayName := "Cloudflare Provider Example"
requestBody.SetDisplayName(&displayName) 
zoneId := "11111111111111111111111111111111"
requestBody.SetZoneId(&zoneId) 
apiToken := "cf_example_token_123"
requestBody.SetApiToken(&apiToken) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
webApplicationFirewallProviders, err := graphClient.Identity().RiskPrevention().WebApplicationFirewallProviders().Post(context.Background(), requestBody, nil)


```