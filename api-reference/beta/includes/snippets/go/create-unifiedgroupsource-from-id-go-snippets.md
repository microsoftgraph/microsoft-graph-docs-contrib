---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

requestBody := graphmodelsediscovery.NewUnifiedGroupSource()
includedSources := graphmodels.MAILBOX, SITE_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
unifiedGroupSources, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Custodians().ByCustodianId("custodian-id").UnifiedGroupSources().Post(context.Background(), requestBody, nil)


```