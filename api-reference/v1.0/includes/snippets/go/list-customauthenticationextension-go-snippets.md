---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)


requestFilter := "isOf('microsoft.graph.onTokenIssuanceStartCustomExtension')"

requestParameters := &graphidentity.IdentityCustomAuthenticationExtensionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentity.IdentityCustomAuthenticationExtensionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().Get(context.Background(), configuration)


```