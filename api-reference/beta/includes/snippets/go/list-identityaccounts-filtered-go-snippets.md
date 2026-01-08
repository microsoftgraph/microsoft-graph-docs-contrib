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


requestFilter := "onPremisesSecurityIdentifier eq 'S-1-5-21-989687458-3461180213-172365591-281652'"

requestParameters := &graphsecurity.IdentitiesIdentityAccountsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.IdentitiesIdentityAccountsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityAccounts, err := graphClient.Security().Identities().IdentityAccounts().Get(context.Background(), configuration)


```