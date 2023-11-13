---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewRevokeGrantsPostRequestBody()


driveRecipient := graphmodels.NewDriveRecipient()
email := "ryan@contoso.com"
driveRecipient.SetEmail(&email) 

grantees := []graphmodels.DriveRecipientable {
	driveRecipient,
}
requestBody.SetGrantees(grantees)

revokeGrants, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Permissions().ByPermissionId("permission-id").RevokeGrants().Post(context.Background(), requestBody, nil)


```