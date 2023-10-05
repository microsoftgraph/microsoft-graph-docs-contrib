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



multiTenantOrganizationPartnerConfiguration, err := graphClient.Policies().CrossTenantAccessPolicy().Templates().MultiTenantOrganizationPartnerConfiguration().Get(context.Background(), nil)


```