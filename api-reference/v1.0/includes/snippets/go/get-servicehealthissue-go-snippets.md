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



issues, err := graphClient.Admin().ServiceAnnouncement().Issues().ByServiceHealthIssueId("serviceHealthIssue-id").Get(context.Background(), nil)


```