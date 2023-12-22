---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



attributes, err := graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").GraphExternalUsersSelfServiceSignUpEventsFlow().OnAttributeCollection().GraphOnAttributeCollectionExternalUsersSelfServiceSignUp().Attributes().Get(context.Background(), nil)


```