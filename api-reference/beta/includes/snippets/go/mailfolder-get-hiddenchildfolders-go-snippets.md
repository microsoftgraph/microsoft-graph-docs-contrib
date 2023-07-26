---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestIncludeHiddenFolders := "true"

requestParameters := &graphusers.ItemMailFolderItemChildFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: &requestIncludeHiddenFolders,
}
configuration := &graphusers.ItemMailFolderItemChildFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").ChildFolders().Get(context.Background(), configuration)


```