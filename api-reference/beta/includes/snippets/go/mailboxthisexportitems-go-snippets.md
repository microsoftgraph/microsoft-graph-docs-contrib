---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

requestBody := graphadmin.NewExportItemsPostRequestBody()
itemIds := []string {
	"EDSVrdi3lRAADmpnf1AAA=",
	"EDSVrdi3lRAAD45b7RAAA=",
}
requestBody.SetItemIds(itemIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exportItems, err := graphClient.Admin().Exchange().Mailboxes().ByMailboxId("mailbox-id").ExportItems().PostAsExportItemsPostResponse(context.Background(), requestBody, nil)


```