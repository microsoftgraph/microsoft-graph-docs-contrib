---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMailboxFolder()
displayName := "Announcements"
requestBody.SetDisplayName(&displayName) 
type := "IPF.Note"
requestBody.SetType(&type) 


singleValueLegacyExtendedProperty := graphmodels.NewSingleValueLegacyExtendedProperty()
id := "String 0x3001"
singleValueLegacyExtendedProperty.SetId(&id) 
value := "Announcements"
singleValueLegacyExtendedProperty.SetValue(&value) 

singleValueExtendedProperties := []graphmodels.SingleValueLegacyExtendedPropertyable {
	singleValueLegacyExtendedProperty,
}
requestBody.SetSingleValueExtendedProperties(singleValueExtendedProperties)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
folders, err := graphClient.Admin().Exchange().Mailboxes().ByMailboxId("mailbox-id").Folders().Post(context.Background(), requestBody, nil)


```