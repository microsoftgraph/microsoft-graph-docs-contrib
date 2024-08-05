---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
createLink, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```