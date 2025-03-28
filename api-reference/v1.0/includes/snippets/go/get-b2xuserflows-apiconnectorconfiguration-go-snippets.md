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

requestParameters := &graphidentity.B2xUserFlowsItemApiConnectorConfigurationRequestBuilderGetQueryParameters{
	Expand: [] string {"postFederationSignup","postAttributeCollection"},
}
configuration := &graphidentity.B2xUserFlowsItemApiConnectorConfigurationRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
apiConnectorConfiguration, err := graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").ApiConnectorConfiguration().Get(context.Background(), configuration)


```