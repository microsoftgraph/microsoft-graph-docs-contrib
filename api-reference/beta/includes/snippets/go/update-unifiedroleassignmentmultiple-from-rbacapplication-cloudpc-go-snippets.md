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
displayName := "NewName"
requestBody.SetDisplayName(&displayName) 
description := "A new roleAssignment"
requestBody.SetDescription(&description) 

roleAssignments, err := graphClient.RoleManagement().CloudPC().RoleAssignments().ByUnifiedRoleAssignmentMultipleId("unifiedRoleAssignmentMultiple-id").Patch(context.Background(), requestBody, nil)


```