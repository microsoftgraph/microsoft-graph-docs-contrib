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


requestBody := graphadmin.NewRemoveMembersByIdPostRequestBody()
ids := []string {
	"String",
	"String",
	"String",
}
requestBody.SetIds(ids)
memberEntityType := "#microsoft.graph.windowsUpdates.azureADDevice"
requestBody.SetMemberEntityType(&memberEntityType) 

graphClient.Admin().Windows().Updates().UpdatableAssets().ByUpdatableAssetId("updatableAsset-id").MicrosoftGraphWindowsUpdatesRemoveMembersById().Post(context.Background(), requestBody, nil)


```