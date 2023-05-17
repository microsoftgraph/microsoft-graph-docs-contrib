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


requestBody := graphmodels.NewMailFolder()
additionalData := map[string]interface{}{
	"filterQuery" : "contains(subject, 'Analytics')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Patch(context.Background(), requestBody, nil)


```