---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdomains "github.com/microsoftgraph/msgraph-beta-sdk-go/domains"
	  //other-imports
)

requestBody := graphdomains.NewVerifyPostRequestBody()
additionalData := map[string]interface{}{
	forceTakeover := true
requestBody.SetForceTakeover(&forceTakeover) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
verify, err := graphClient.Domains().ByDomainId("domain-id").Verify().Post(context.Background(), requestBody, nil)


```