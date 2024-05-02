---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "isOf('microsoft.graph.onTokenIssuanceStartCustomExtension')"

requestParameters := &graphidentity.IdentityCustomAuthenticationExtensionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentity.IdentityCustomAuthenticationExtensionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().Get(context.Background(), configuration)


```