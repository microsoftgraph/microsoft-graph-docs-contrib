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
	  //other-imports
)

requestParameters := &graphsecurity.IdentitiesIdentityAccountsItemRequestBuilderGetQueryParameters{
	Select: [] string {"accounts"},
}
configuration := &graphsecurity.IdentitiesIdentityAccountsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityAccounts, err := graphClient.Security().Identities().IdentityAccounts().ByIdentityAccountsId("identityAccounts-id").Get(context.Background(), configuration)


```