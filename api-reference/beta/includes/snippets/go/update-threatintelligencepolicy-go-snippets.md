---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewThreatIntelligencePolicy()
id := "a8352c78-90c6-4edd-aaca-9dc4292e7750"
requestBody.SetId(&id) 
name := "Threat Intel Policy"
requestBody.SetName(&name) 
description := ""
requestBody.SetDescription(&description) 
version := "1.0.0"
requestBody.SetVersion(&version) 
lastModifiedDateTime , err := time.Parse(time.RFC3339, "2025-06-18T17:34:25.8207682Z")
requestBody.SetLastModifiedDateTime(&lastModifiedDateTime) 
settings := graphmodelsnetworkaccess.NewThreatIntelligencePolicySettings()
defaultAction := graphmodels.ALLOW_THREATINTELLIGENCEACTION 
settings.SetDefaultAction(&defaultAction) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
threatIntelligencePolicies, err := graphClient.NetworkAccess().ThreatIntelligencePolicies().ByThreatIntelligencePolicyId("threatIntelligencePolicy-id").Patch(context.Background(), requestBody, nil)


```