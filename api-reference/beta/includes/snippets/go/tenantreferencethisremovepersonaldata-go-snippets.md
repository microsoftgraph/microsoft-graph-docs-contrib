---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Directory().OutboundSharedUserProfiles().ByOutboundSharedUserProfileId("outboundSharedUserProfile-userId").Tenants().ByTenantId("tenantReference-tenantId").RemovePersonalData().Post(context.Background(), nil)


```