---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)


requestIncludeHiddenFolders := "true"

requestParameters := &graphusers.MailFoldersItemChildFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: &requestIncludeHiddenFolders,
}
configuration := &graphusers.MailFoldersItemChildFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
childFolders, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").ChildFolders().Get(context.Background(), configuration)


```