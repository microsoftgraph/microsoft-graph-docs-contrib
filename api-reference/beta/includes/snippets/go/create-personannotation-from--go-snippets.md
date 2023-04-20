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


requestBody := graphmodels.NewPersonAnnotation()
detail := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
detail.SetContentType(&contentType) 
content := "I am originally from Australia, but grew up in Moscow, Russia."
detail.SetContent(&content) 
requestBody.SetDetail(detail)
displayName := "About Me"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Profile().Notes().Post(context.Background(), requestBody, nil)


```