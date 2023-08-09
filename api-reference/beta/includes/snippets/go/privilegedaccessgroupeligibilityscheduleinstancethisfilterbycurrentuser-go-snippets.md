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



filterByCurrentUser(on='{on}'), err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilityScheduleInstances().FilterByCurrentUser(on='{on}')().Get(context.Background(), nil)


```