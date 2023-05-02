---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Directory/DeletedItems/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeletedItem()
additionalData := map[string]interface{}{
	"userId" : "55ac777c-109e-4022-b58c-470c8fcb6892", 
	"type" : "Group", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Directory().DeletedItems().ByDeletedItemId("directoryObject-id").Post(context.Background(), requestBody, nil)


```