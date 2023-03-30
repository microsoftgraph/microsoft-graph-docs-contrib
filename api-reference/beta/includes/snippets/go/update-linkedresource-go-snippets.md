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


requestBody := graphmodels.NewLinkedResource()
webUrl := "http://microsoft.com"
requestBody.SetWebUrl(&webUrl) 
applicationName := "Microsoft"
requestBody.SetApplicationName(&applicationName) 
displayName := "Microsoft"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Todo().ListsById("todoTaskList-id").TasksById("todoTask-id").LinkedResourcesById("linkedResource-id").Patch(context.Background(), requestBody, nil)


```