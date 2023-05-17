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


requestBody := graphmodels.NewPersonAward()
description := "Lifetime Achievement award from the International Association of Branding Managers"
requestBody.SetDescription(&description) 
displayName := "Lifetime Achievement Award For Excellence in Branding"
requestBody.SetDisplayName(&displayName) 
issuedDate := date
requestBody.SetIssuedDate(&issuedDate) 
issuingAuthority := "International Association of Branding Management"
requestBody.SetIssuingAuthority(&issuingAuthority) 
thumbnailUrl := "https://iabm.io/sdhdfhsdhshsd.jpg"
requestBody.SetThumbnailUrl(&thumbnailUrl) 
webUrl := "https://www.iabm.io"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Profile().Awards().Post(context.Background(), requestBody, nil)


```