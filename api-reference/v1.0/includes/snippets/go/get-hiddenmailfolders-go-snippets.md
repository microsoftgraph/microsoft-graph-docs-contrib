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

requestParameters := &graphusers.ItemMailFoldersRequestBuilderGetQueryParameters{
	IncludeHiddenFolders: &requestIncludeHiddenFolders,
}
configuration := &graphusers.ItemMailFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFolders().Get(context.Background(), configuration)


```