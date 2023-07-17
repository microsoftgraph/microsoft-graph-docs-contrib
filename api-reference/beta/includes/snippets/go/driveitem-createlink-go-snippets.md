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


requestBody := graphdrives.NewCreateLinkPostRequestBody()
type := "view"
requestBody.SetType(&type) 
scope := "anonymous"
requestBody.SetScope(&scope) 
password := "String"
requestBody.SetPassword(&password) 


driveRecipient := graphmodels.NewDriveRecipient()

recipients := []graphmodels.DriveRecipientable {
	driveRecipient,
}
requestBody.SetRecipients(recipients)
sendNotification := true
requestBody.SetSendNotification(&sendNotification) 
retainInheritedPermissions := false
requestBody.SetRetainInheritedPermissions(&retainInheritedPermissions) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```