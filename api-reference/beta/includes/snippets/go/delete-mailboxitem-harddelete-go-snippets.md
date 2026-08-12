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


requestDisposalType := "hardDelete"

requestParameters := &graphadmin.ExchangeMailboxesItemFoldersItemItemsItemRequestBuilderDeleteQueryParameters{
	DisposalType: &requestDisposalType,
}
configuration := &graphadmin.ExchangeMailboxesItemFoldersItemItemsItemRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Admin().Exchange().Mailboxes().ByMailboxId("mailbox-id").Folders().ByMailboxFolderId("mailboxFolder-id").Items().ByMailboxItemId("mailboxItem-id").Delete(context.Background(), configuration)


```