---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphexternal "github.com/microsoftgraph/msgraph-beta-sdk-go/external"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "authorizationSystemType eq 'aws'"

requestParameters := &graphexternal.ExternalAuthorizationSystemsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphexternal.ExternalAuthorizationSystemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

authorizationSystems, err := graphClient.External().AuthorizationSystems().Get(context.Background(), configuration)


```