---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

requestParameters := &graphidentity.RiskPreventionWebApplicationFirewallProvidersItemVerifyRequestBuilderPostQueryParameters{
	Expand: [] string {"provider"},
}
configuration := &graphidentity.RiskPreventionWebApplicationFirewallProvidersItemVerifyRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}
requestBody := graphidentity.NewVerifyPostRequestBody()
hostName := "www.contoso.com"
requestBody.SetHostName(&hostName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
verify, err := graphClient.Identity().RiskPrevention().WebApplicationFirewallProviders().ByWebApplicationFirewallProviderId("webApplicationFirewallProvider-id").Verify().Post(context.Background(), requestBody, configuration)


```