---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphadmin.NewEnrollAssetsPostRequestBody()
updateCategory := graphmodels.STRING_UPDATECATEGORY 
requestBody.SetUpdateCategory(&updateCategory) 


updatableAsset := graphmodelswindowsupdates.NewAzureADDevice()
id := "String (identifier)"
updatableAsset.SetId(&id) 

assets := []graphmodelswindowsupdates.updatableAssetable {
	updatableAsset,
}
requestBody.SetAssets(assets)

graphClient.Admin().Windows().Updates().UpdatableAssets().MicrosoftGraphWindowsUpdatesEnrollAssets().Post(context.Background(), requestBody, nil)


```