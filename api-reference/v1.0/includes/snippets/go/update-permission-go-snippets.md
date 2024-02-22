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


requestBody := graphmodels.NewPermission()
roles := []string {
	"read",
}
requestBody.SetRoles(roles)

permissions, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Permissions().ByPermissionId("permission-id").Patch(context.Background(), requestBody, nil)


```