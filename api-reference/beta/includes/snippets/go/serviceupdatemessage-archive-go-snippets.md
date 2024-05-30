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

requestBody := graphadmin.NewArchivePostRequestBody()
messageIds := []string {
	"MC172851",
	"MC167983",
}
requestBody.SetMessageIds(messageIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
archive, err := graphClient.Admin().ServiceAnnouncement().Messages().Archive().PostAsArchivePostResponse(context.Background(), requestBody, nil)


```