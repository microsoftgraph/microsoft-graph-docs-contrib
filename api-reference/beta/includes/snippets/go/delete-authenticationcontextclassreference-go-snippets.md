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



graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferences().ByAuthenticationContextClassReferenceId("authenticationContextClassReference-id").Delete(context.Background(), nil)


```