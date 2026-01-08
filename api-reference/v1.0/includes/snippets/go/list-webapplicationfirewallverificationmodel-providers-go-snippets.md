---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)

requestParameters := &graphidentity.RiskPreventionWebApplicationFirewallVerificationsRequestBuilderGetQueryParameters{
	Expand: [] string {"provider"},
}
configuration := &graphidentity.RiskPreventionWebApplicationFirewallVerificationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
webApplicationFirewallVerifications, err := graphClient.Identity().RiskPrevention().WebApplicationFirewallVerifications().Get(context.Background(), configuration)


```