---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-sdk-go/directory"
	  //other-imports
)


requestFilter := "domains/any(x: x/id eq 'contoso.com')"

requestParameters := &graphdirectory.FederationConfigurationsItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectory.FederationConfigurationsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
federationConfigurations, err := graphClient.Directory().FederationConfigurations().ByIdentityProviderBaseId("identityProviderBase-id").Get(context.Background(), configuration)


```