---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

configuration := &graphadmin.ExchangeMailboxesItemFoldersDeltaRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delta, err := graphClient.Admin().Exchange().Mailboxes().ByMailboxId("mailbox-id").Folders().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```