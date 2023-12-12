---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



userRegistrationDetails, err := graphClient.Reports().AuthenticationMethods().UserRegistrationDetails().ByUserRegistrationDetailsId("userRegistrationDetails-id").Get(context.Background(), nil)


```