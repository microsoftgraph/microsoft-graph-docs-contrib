---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferences().ByAuthenticationContextClassReferenceId("authenticationContextClassReference-id").Delete(context.Background(), nil)


```