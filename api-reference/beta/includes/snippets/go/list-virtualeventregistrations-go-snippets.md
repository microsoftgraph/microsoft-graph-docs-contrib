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



registrations, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").Registrations().Get(context.Background(), nil)


```