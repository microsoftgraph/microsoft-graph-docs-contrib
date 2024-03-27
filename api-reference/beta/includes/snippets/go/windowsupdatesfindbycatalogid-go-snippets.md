---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphadmin.AdminWindowsUpdatesProductsMicrosoft.graph.windowsUpdates.findByKbNumber(kbNumber={kbNumber})RequestBuilderGetQueryParameters{
	Expand: [] string {"revisions($expand=catalogEntry,knowledgeBaseArticle)","knownIssues"},
}
configuration := &graphadmin.AdminWindowsUpdatesProductsMicrosoft.graph.windowsUpdates.findByKbNumber(kbNumber={kbNumber})RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

kbNumber := int32(1)
microsoftGraphWindowsUpdatesFindByKbNumber, err := graphClient.Admin().Windows().Updates().Products().MicrosoftGraphWindowsUpdatesFindByKbNumberWithKbNumber(&kbNumber).GetAsFindByKbNumberWithKbNumberGetResponse(context.Background(), configuration)


```