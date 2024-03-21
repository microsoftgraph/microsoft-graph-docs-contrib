---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleAssignmentMultiple()
principalIds := []string {
	"0aeec2c1-fee7-4e02-b534-6f920d25b300",
	"2d5386a7-732f-44db-9cf8-f82dd2a1c0e0",
}
requestBody.SetPrincipalIds(principalIds)

roleAssignments, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().ByUnifiedRoleAssignmentMultipleId("unifiedRoleAssignmentMultiple-id").Patch(context.Background(), requestBody, nil)


```