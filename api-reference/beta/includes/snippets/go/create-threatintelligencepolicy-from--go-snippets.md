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

requestBody := graphmodelsnetworkaccess.NewThreatIntelligencePolicy()
name := "Malicious Domains Policy"
requestBody.SetName(&name) 
description := "Policy to block traffic to known malicious domains based on threat intelligence"
requestBody.SetDescription(&description) 
version := "1.0"
requestBody.SetVersion(&version) 
settings := graphmodelsnetworkaccess.NewThreatIntelligencePolicySettings()
defaultAction := graphmodels.BLOCK_THREATINTELLIGENCEACTION 
settings.SetDefaultAction(&defaultAction) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
threatIntelligencePolicies, err := graphClient.NetworkAccess().ThreatIntelligencePolicies().Post(context.Background(), requestBody, nil)


```