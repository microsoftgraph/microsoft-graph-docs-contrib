---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Admin/Windows/Updates/UpdatableAssets/WindowsUpdatesEnrollAssetsById"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEnrollAssetsByIdPostRequestBody()
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

graphClient.Admin().Windows().Updates().UpdatableAssets().WindowsUpdatesEnrollAssetsById().Post(context.Background(), requestBody, nil)


```