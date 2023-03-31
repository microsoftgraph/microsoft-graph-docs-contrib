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


requestBody := graphmodels.NewChecklistItem()
displayName := "buy cake"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Todo().ListsById("todoTaskList-id").TasksById("todoTask-id").ChecklistItemsById("checklistItem-id").Patch(context.Background(), requestBody, nil)


```