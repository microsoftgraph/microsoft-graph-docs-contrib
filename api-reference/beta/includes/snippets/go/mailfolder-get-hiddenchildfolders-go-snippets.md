---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestIncludehiddenfolders := true

requestParameters := &graphconfig.ItemMailFolderItemChildFoldersRequestBuilderGetQueryParameters{
	Includehiddenfolders: &requestIncludehiddenfolders,
}
configuration := &graphconfig.ItemMailFolderItemChildFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").ChildFolders().Get(context.Background(), configuration)


```