---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphchats.ChatItemInstalledAppItemRequestBuilderGetQueryParameters{
	Select: [] string {"consentedPermissionSet","id"},
}
configuration := &graphchats.ChatItemInstalledAppItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Chats().ByChatId("chat-id").InstalledApps().ByInstalledAppId("teamsAppInstallation-id").Get(context.Background(), configuration)


```