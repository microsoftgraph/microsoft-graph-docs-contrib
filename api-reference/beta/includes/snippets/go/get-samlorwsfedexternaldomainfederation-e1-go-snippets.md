---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "domains/any(x: x/id eq 'contoso.com')"

requestParameters := &graphdirectory.DirectoryFederationConfigurationItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectory.DirectoryFederationConfigurationItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

federationConfigurations, err := graphClient.Directory().FederationConfigurations().ByIdentityProviderBaseId("identityProviderBase-id").Get(context.Background(), configuration)


```