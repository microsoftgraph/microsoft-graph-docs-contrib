---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentity.IdentityB2xUserFlowItemApiConnectorConfigurationRequestBuilderGetQueryParameters{
	Expand: [] string {"postFederationSignup","postAttributeCollection"},
}
configuration := &graphidentity.IdentityB2xUserFlowItemApiConnectorConfigurationRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

apiConnectorConfiguration, err := graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").ApiConnectorConfiguration().Get(context.Background(), configuration)


```