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

requestBody := graphidentity.NewVerifyPostRequestBody()
hostName := "www.contoso.com"
requestBody.SetHostName(&hostName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
verify, err := graphClient.Identity().RiskPrevention().WebApplicationFirewallProviders().ByWebApplicationFirewallProviderId("webApplicationFirewallProvider-id").Verify().Post(context.Background(), requestBody, nil)


```