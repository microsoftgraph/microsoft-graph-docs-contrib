---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

requestBody := graphsecurity.NewApplyHoldPostRequestBody()
ids := []string {
	"7f697316-43ed-48e1-977f-261be050db93",
	"b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8",
}
requestBody.SetIds(ids)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Custodians().MicrosoftGraphSecurityApplyHold().Post(context.Background(), requestBody, nil)


```