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



hostCookies, err := graphClient.Security().ThreatIntelligence().HostCookies().ByHostCookieId("hostCookie-id").Get(context.Background(), nil)


```