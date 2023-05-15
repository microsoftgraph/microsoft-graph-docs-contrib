---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/Invite"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewInvitePostRequestBody()


driveRecipient := graphmodels.NewDriveRecipient()
email := "robin@contoso.org"
driveRecipient.SetEmail(&email) 

recipients := []graphmodels.DriveRecipientable {
	driveRecipient,

}
requestBody.SetRecipients(recipients)
message := "Here's the file that we're collaborating on."
requestBody.SetMessage(&message) 
requireSignIn := true
requestBody.SetRequireSignIn(&requireSignIn) 
sendInvitation := true
requestBody.SetSendInvitation(&sendInvitation) 
roles := []string {
	"write",

}
requestBody.SetRoles(roles)
password := "password123"
requestBody.SetPassword(&password) 
expirationDateTime := "2018-07-15T14:00:00.000Z"
requestBody.SetExpirationDateTime(&expirationDateTime) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Invite().Post(context.Background(), requestBody, nil)


```