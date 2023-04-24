---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/Item/AddLargeGalleryView"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddLargeGalleryViewPostRequestBody()
clientContext := "785f4929-92ca-497b-863f-c778c77c9758"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().Calls().ByCallId("call-id").AddLargeGalleryView().Post(context.Background(), requestBody, nil)


```