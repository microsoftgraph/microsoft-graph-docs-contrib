---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.ItemMailFolderItemMessagesRequestBuilderGetQueryParameters{
	Orderby: [] string {"from/emailAddress/name desc","subject"},
}
configuration := &graphusers.ItemMailFolderItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Messages().Get(context.Background(), configuration)


```