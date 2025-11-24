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

requestParameters := &graphidentity.RiskPreventionWebApplicationFirewallVerificationsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"provider"},
}
configuration := &graphidentity.RiskPreventionWebApplicationFirewallVerificationsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
webApplicationFirewallVerifications, err := graphClient.Identity().RiskPrevention().WebApplicationFirewallVerifications().ByWebApplicationFirewallVerificationModelId("webApplicationFirewallVerificationModel-id").Get(context.Background(), configuration)


```