---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Admin/Windows/Updates/UpdatableAssets/Item/WindowsUpdatesRemoveMembersById"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRemoveMembersByIdPostRequestBody()
ids := []string {
	"String",
	"String",
	"String",

}
requestBody.SetIds(ids)
memberEntityType := "#microsoft.graph.windowsUpdates.azureADDevice"
requestBody.SetMemberEntityType(&memberEntityType) 

graphClient.Admin().Windows().Updates().UpdatableAssets().ByUpdatableAssetId("updatableAsset-id").WindowsUpdatesRemoveMembersById().Post(context.Background(), requestBody, nil)


```