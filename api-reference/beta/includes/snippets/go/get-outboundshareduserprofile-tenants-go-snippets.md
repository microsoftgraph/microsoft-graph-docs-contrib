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



tenants, err := graphClient.Directory().OutboundSharedUserProfiles().ByOutboundSharedUserProfileUserId("outboundSharedUserProfile-userId").Tenants().Get(context.Background(), nil)


```