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

requestParameters := &graphadmin.WindowsUpdatesProductsfindByKbNumberRequestBuilderGetQueryParameters{
	Expand: [] string {"revisions($expand=catalogEntry,knowledgeBaseArticle)","knownIssues"},
}
configuration := &graphadmin.WindowsUpdatesProductsfindByKbNumberRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
kbNumber := int32(1)
microsoftGraphWindowsUpdatesFindByKbNumber, err := graphClient.Admin().Windows().Updates().Products().MicrosoftGraphWindowsUpdatesFindByKbNumberWithKbNumber(&kbNumber).GetAsFindByKbNumberWithKbNumberGetResponse(context.Background(), configuration)


```