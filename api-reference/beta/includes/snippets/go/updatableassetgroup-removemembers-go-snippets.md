---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Admin/Windows/Updates/UpdatableAssets/Item/WindowsUpdatesRemoveMembers"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRemoveMembersPostRequestBody()


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

assets := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetAssets(assets)

graphClient.Admin().Windows().Updates().UpdatableAssets().ByUpdatableAssetId("updatableAsset-id").WindowsUpdatesRemoveMembers().Post(context.Background(), requestBody, nil)


```