---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Permissions().ByPermissionId("permission-id").Patch(context.Background(), requestBody, nil)


```