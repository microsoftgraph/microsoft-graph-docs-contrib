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

requestBody := graphmodelstenantgovernanceservices.NewGovernanceRequest()
governedTenantId := "bbbbcccc-1111-dddd-2222-eeee3333ffff"
requestBody.SetGovernedTenantId(&governedTenantId) 
additionalData := map[string]interface{}{
	"governancePolicyTemplate@odata.bind" : "https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
governanceRequests, err := graphClient.Directory().TenantGovernance().GovernanceRequests().Post(context.Background(), requestBody, nil)


```