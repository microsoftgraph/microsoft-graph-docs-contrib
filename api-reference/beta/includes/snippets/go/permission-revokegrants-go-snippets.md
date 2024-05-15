---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdrives.NewRevokeGrantsPostRequestBody()


driveRecipient := graphmodels.NewDriveRecipient()
email := "ryan@contoso.com"
driveRecipient.SetEmail(&email) 

grantees := []graphmodels.DriveRecipientable {
	driveRecipient,
}
requestBody.SetGrantees(grantees)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
revokeGrants, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Permissions().ByPermissionId("permission-id").RevokeGrants().Post(context.Background(), requestBody, nil)


```