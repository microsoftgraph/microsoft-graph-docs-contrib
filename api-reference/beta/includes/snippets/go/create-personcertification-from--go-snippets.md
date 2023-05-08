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


requestBody := graphmodels.NewPersonCertification()
certificationId := "KB-1235466333663322"
requestBody.SetCertificationId(&certificationId) 
description := "Blackbelt in Marketing - Brand Management"
requestBody.SetDescription(&description) 
displayName := "Marketing Blackbelt - Brand Management"
requestBody.SetDisplayName(&displayName) 
thumbnailUrl := "https://iame.io/dfhdfdfd334.jpg"
requestBody.SetThumbnailUrl(&thumbnailUrl) 
webUrl := "https://www.iame.io/blackbelt"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Profile().Certifications().Post(context.Background(), requestBody, nil)


```