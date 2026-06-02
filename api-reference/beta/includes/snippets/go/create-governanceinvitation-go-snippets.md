---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelstenantgovernanceservices "github.com/microsoftgraph/msgraph-beta-sdk-go/models/tenantgovernanceservices"
	  //other-imports
)

requestBody := graphmodelstenantgovernanceservices.NewGovernanceInvitation()
governingTenantId := "aaaabbbb-0000-cccc-1111-dddd2222eeee"
requestBody.SetGoverningTenantId(&governingTenantId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
governanceInvitations, err := graphClient.Directory().TenantGovernance().GovernanceInvitations().Post(context.Background(), requestBody, nil)


```