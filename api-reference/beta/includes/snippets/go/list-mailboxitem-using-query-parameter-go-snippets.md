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


requestFilter := "createdDateTime ge 2021-08-21 and createdDateTime lt 2021-09-16"
requestTop := int32(1)

requestParameters := &graphadmin.ExchangeMailboxesItemFoldersItemItemsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"type","size"},
	Top: &requestTop,
}
configuration := &graphadmin.ExchangeMailboxesItemFoldersItemItemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
items, err := graphClient.Admin().Exchange().Mailboxes().ByMailboxId("mailbox-id").Folders().ByMailboxFolderId("mailboxFolder-id").Items().Get(context.Background(), configuration)


```