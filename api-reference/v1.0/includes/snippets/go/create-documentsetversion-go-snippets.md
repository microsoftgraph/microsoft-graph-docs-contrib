---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDocumentSetVersion()
comment := "v1"
requestBody.SetComment(&comment) 
shouldCaptureMinorVersion := false
requestBody.SetShouldCaptureMinorVersion(&shouldCaptureMinorVersion) 

result, err := graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").DocumentSetVersions().Post(context.Background(), requestBody, nil)


```