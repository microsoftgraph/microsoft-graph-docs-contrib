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



assignments, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionsId("termsAndConditions-id").Assignments().Get(context.Background(), nil)


```