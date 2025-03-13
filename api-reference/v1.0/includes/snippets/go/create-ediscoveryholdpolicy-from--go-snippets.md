---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewEdiscoveryHoldPolicy()
displayName := "My legalHold with sources"
requestBody.SetDisplayName(&displayName) 
description := "Created from Graph API"
requestBody.SetDescription(&description) 
contentQuery := "KQL content query"
requestBody.SetContentQuery(&contentQuery) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
legalHolds, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").LegalHolds().Post(context.Background(), requestBody, nil)


```