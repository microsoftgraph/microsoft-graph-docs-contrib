---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Admin/Windows/Updates/UpdatableAssets/WindowsUpdatesUnenrollAssetsById"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnenrollAssetsByIdPostRequestBody()
updateCategory := graphmodels.FEATURE_UPDATECATEGORY 
requestBody.SetUpdateCategory(&updateCategory) 
memberEntityType := "#microsoft.graph.windowsUpdates.azureADDevice"
requestBody.SetMemberEntityType(&memberEntityType) 
ids := []string {
	"String",
	"String",
	"String",

}
requestBody.SetIds(ids)

graphClient.Admin().Windows().Updates().UpdatableAssets().WindowsUpdatesUnenrollAssetsById().Post(context.Background(), requestBody, nil)


```