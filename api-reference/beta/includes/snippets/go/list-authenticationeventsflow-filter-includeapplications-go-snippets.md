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



requestFilter := "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any"

requestParameters := &graphidentity.IdentityAuthenticationEventsFlowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentity.IdentityAuthenticationEventsFlowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

authenticationEventsFlows, err := graphClient.Identity().AuthenticationEventsFlows().Get(context.Background(), configuration)


```