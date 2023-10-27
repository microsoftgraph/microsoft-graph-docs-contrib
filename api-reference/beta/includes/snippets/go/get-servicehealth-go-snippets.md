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



healthOverviews, err := graphClient.Admin().ServiceAnnouncement().HealthOverviews().ByServiceHealthId("serviceHealth-id").Get(context.Background(), nil)


```