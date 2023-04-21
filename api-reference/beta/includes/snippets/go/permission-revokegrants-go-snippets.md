---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Permissions/Item/RevokeGrants"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRevokeGrantsPostRequestBody()


driveRecipient := graphmodels.NewDriveRecipient()
email := "ryan@contoso.com"
driveRecipient.SetEmail(&email) 

grantees := []graphmodels.DriveRecipientable {
	driveRecipient,

}
requestBody.SetGrantees(grantees)

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Permissions().ByPermissionId("permission-id").RevokeGrants().Post(context.Background(), requestBody, nil)


```