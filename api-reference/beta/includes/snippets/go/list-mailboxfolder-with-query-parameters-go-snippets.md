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


requestFilter := "type eq 'IPF.Appointment'"
requestTop := int32(5)

requestParameters := &graphadmin.ExchangeMailboxesItemFoldersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","type"},
	Top: &requestTop,
}
configuration := &graphadmin.ExchangeMailboxesItemFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
folders, err := graphClient.Admin().Exchange().Mailboxes().ByMailboxId("mailbox-id").Folders().Get(context.Background(), configuration)


```