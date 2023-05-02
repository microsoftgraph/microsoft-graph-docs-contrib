---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/CreateLink"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateLinkPostRequestBody()
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