---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphexternal "github.com/microsoftgraph/msgraph-beta-sdk-go/external"
	  //other-imports
)


requestFilter := "authorizationSystemType eq 'aws'"

requestParameters := &graphexternal.ExternalAuthorizationSystemsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphexternal.ExternalAuthorizationSystemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authorizationSystems, err := graphClient.External().AuthorizationSystems().Get(context.Background(), configuration)


```