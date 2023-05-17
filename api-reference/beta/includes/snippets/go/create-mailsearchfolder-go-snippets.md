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
displayName := "Weekly digests"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	includeNestedFolders := true
requestBody.SetIncludeNestedFolders(&includeNestedFolders) 
	sourceFolderIds := []string {
		"AQMkADYAAAIBDAAAAA==",

	}
	"filterQuery" : "contains(subject, 'weekly digest')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").ChildFolders().Post(context.Background(), requestBody, nil)


```