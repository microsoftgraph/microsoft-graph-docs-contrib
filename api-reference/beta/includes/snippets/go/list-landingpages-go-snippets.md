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


requestFilter := "source eq 'tenant'"

requestParameters := &graphsecurity.AttackSimulationLandingPagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.AttackSimulationLandingPagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
landingPages, err := graphClient.Security().AttackSimulation().LandingPages().Get(context.Background(), configuration)


```