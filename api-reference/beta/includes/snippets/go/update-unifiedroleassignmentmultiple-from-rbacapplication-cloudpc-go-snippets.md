---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.RoleManagement().CloudPC().RoleAssignments().ByRoleAssignmentId("unifiedRoleAssignmentMultiple-id").Patch(context.Background(), requestBody, nil)


```