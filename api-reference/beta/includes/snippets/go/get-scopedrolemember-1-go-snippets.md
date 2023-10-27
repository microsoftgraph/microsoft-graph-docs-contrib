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



scopedRoleMembers, err := graphClient.AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").ScopedRoleMembers().ByScopedRoleMembershipId("scopedRoleMembership-id").Get(context.Background(), nil)


```