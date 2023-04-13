---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewItemPublication()
description := "One persons journey to the top of the branding management field."
requestBody.SetDescription(&description) 
displayName := "Got Brands? The story of Innocenty Popov and his journey to the top."
requestBody.SetDisplayName(&displayName) 
publishedDate := date
requestBody.SetPublishedDate(&publishedDate) 
publisher := "International Association of Branding Management Publishing"
requestBody.SetPublisher(&publisher) 
thumbnailUrl := "https://iabm.io/sdhdfhsdhshsd.jpg"
requestBody.SetThumbnailUrl(&thumbnailUrl) 
webUrl := "https://www.iabm.io"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Profile().Publications().Post(context.Background(), requestBody, nil)


```