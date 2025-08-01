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

requestBody := graphmodelsnetworkaccess.NewTlsInspectionPolicy()
name := "Default TLS Inspection Policy"
requestBody.SetName(&name) 
description := "Policy for inspecting TLS traffic"
requestBody.SetDescription(&description) 
settings := graphmodelsnetworkaccess.NewTlsInspectionPolicySettings()
additionalData := map[string]interface{}{
	"defaultAction" : "bypass", 
}
settings.SetAdditionalData(additionalData)
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tlsInspectionPolicies, err := graphClient.NetworkAccess().TlsInspectionPolicies().Post(context.Background(), requestBody, nil)


```