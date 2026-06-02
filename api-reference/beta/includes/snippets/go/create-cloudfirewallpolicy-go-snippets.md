---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewCloudFirewallPolicy()
name := "Block unauthorized egress"
requestBody.SetName(&name) 
description := "Policy to block unauthorized outbound connections"
requestBody.SetDescription(&description) 
settings := graphmodelsnetworkaccess.NewCloudFirewallPolicySettings()
defaultAction := graphmodels.ALLOW_CLOUDFIREWALLACTION 
settings.SetDefaultAction(&defaultAction) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cloudFirewallPolicies, err := graphClient.NetworkAccess().CloudFirewallPolicies().Post(context.Background(), requestBody, nil)


```