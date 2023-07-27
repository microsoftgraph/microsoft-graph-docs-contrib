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



result, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionId("termsAndConditions-id").AcceptanceStatuses().ByAcceptanceStatuseId("termsAndConditionsAcceptanceStatus-id").Get(context.Background(), nil)


```