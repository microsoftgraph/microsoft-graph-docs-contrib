---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphdrives.NewInvitePostRequestBody()


driveRecipient := graphmodels.NewDriveRecipient()
email := "helga@contoso.com"
driveRecipient.SetEmail(&email) 
driveRecipient1 := graphmodels.NewDriveRecipient()
email := "robin@contoso.com"
driveRecipient1.SetEmail(&email) 

recipients := []graphmodels.DriveRecipientable {
	driveRecipient,
	driveRecipient1,
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
invite, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Invite().PostAsInvitePostResponse(context.Background(), requestBody, nil)


```