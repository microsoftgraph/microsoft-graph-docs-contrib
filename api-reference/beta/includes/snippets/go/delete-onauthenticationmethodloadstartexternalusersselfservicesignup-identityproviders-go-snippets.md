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



graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").GraphExternalUsersSelfServiceSignUpEventsFlow().OnAuthenticationMethodLoadStart().GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp().IdentityProviders().ByIdentityProviderBaseId("identityProviderBase-id").Ref().Delete(context.Background(), nil)


```