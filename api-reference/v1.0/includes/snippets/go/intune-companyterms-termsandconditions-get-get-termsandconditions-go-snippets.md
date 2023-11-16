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



termsAndConditions, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionsId("termsAndConditions-id").Get(context.Background(), nil)


```