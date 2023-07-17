---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphshares "github.com/microsoftgraph/msgraph-sdk-go/shares"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphshares.NewGrantPostRequestBody()


driveRecipient := graphmodels.NewDriveRecipient()
email := "john@contoso.com"
driveRecipient.SetEmail(&email) 
driveRecipient1 := graphmodels.NewDriveRecipient()
email := "ryan@external.com"
driveRecipient1.SetEmail(&email) 

recipients := []graphmodels.DriveRecipientable {
	driveRecipient,
	driveRecipient1,
}
requestBody.SetRecipients(recipients)
roles := []string {
	"read",
}
requestBody.SetRoles(roles)

result, err := graphClient.Shares().ByShareId("sharedDriveItem-id").Permission().Grant().Post(context.Background(), requestBody, nil)


```