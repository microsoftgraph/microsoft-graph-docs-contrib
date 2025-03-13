---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
certifications, err := graphClient.Me().Profile().Certifications().Post(context.Background(), requestBody, nil)


```