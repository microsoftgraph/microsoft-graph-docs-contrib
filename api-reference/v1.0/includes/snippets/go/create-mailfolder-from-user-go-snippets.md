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


requestBody := graphmodels.NewMailFolder()
displayName := "Clutter"
requestBody.SetDisplayName(&displayName) 
isHidden := true
requestBody.SetIsHidden(&isHidden) 

result, err := graphClient.Me().MailFolders().Post(context.Background(), requestBody, nil)


```