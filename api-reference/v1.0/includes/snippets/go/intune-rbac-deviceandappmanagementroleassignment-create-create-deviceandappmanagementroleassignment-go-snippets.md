---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceAndAppManagementRoleAssignment()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
resourceScopes := []string {
	"Resource Scopes value",
}
requestBody.SetResourceScopes(resourceScopes)
members := []string {
	"Members value",
}
requestBody.SetMembers(members)

result, err := graphClient.DeviceManagement().RoleAssignments().Post(context.Background(), requestBody, nil)


```