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

requestBody := graphmodels.NewM365CapabilityBase()
inboundAccess := graphmodels.NewM365CapabilityInboundAccess()
isAllowed := false
inboundAccess.SetIsAllowed(&isAllowed) 
requestBody.SetInboundAccess(inboundAccess)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
m365Capabilities, err := graphClient.Policies().CrossTenantAccessPolicy().Default().M365Capabilities().ByM365CapabilityBaseName("m365CapabilityBase-name").Patch(context.Background(), requestBody, nil)


```