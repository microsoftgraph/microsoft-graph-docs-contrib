---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "domains/any"

requestParameters := &graphconfig.DirectoryFederationConfigurationItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.DirectoryFederationConfigurationItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().FederationConfigurations().ByFederationConfigurationId("identityProviderBase-id").Get(context.Background(), configuration)


```