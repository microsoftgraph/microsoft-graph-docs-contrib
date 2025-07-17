---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewPurgeDataPostRequestBody()
purgeType := graphmodels.RECOVERABLE_PURGETYPE 
requestBody.SetPurgeType(&purgeType) 
purgeAreas := graphmodels.TEAMSMESSAGES_PURGEAREAS 
requestBody.SetPurgeAreas(&purgeAreas) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Searches().ByEdiscoverySearchId("ediscoverySearch-id").MicrosoftGraphSecurityPurgeData().Post(context.Background(), requestBody, nil)


```