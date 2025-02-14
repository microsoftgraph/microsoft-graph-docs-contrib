---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)


requestFilter := "isEnabled eq true"

requestParameters := &graphidentity.B2cUserFlowsItemLanguagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentity.B2cUserFlowsItemLanguagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
languages, err := graphClient.Identity().B2cUserFlows().ByB2cIdentityUserFlowId("b2cIdentityUserFlow-id").Languages().Get(context.Background(), configuration)


```