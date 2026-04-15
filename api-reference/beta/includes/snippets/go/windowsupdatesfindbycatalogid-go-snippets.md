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

requestParameters := &graphadmin.WindowsUpdatesProductsfindByCatalogIdWithCatalogIDRequestBuilderGetQueryParameters{
	Expand: [] string {"revisions($expand=catalogEntry,knowledgeBaseArticle)","knownIssues($expand=originatingKnowledgeBaseArticle,resolvingKnowledgeBaseArticle)"},
}
configuration := &graphadmin.WindowsUpdatesProductsfindByCatalogIdWithCatalogIDRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
catalogID := "{catalogID}"
microsoftGraphWindowsUpdatesFindByCatalogId, err := graphClient.Admin().Windows().Updates().Products().MicrosoftGraphWindowsUpdatesFindByCatalogIdWithCatalogID(&catalogID).GetAsFindByCatalogIdWithCatalogIDGetResponse(context.Background(), configuration)


```