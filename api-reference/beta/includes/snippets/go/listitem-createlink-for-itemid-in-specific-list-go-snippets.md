---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsites.NewCreateLinkPostRequestBody()
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

result, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByItemId("listItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```