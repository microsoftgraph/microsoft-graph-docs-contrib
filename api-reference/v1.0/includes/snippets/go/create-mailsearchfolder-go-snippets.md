---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMailFolder()
displayName := "Weekly digests"
requestBody.SetDisplayName(&displayName) 
includeNestedFolders := true
requestBody.SetIncludeNestedFolders(&includeNestedFolders) 
sourceFolderIds := []string {
	"AQMkADYAAAIBDAAAAA==",
}
requestBody.SetSourceFolderIds(sourceFolderIds)
filterQuery := "contains(subject, 'weekly digest')"
requestBody.SetFilterQuery(&filterQuery) 

childFolders, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").ChildFolders().Post(context.Background(), requestBody, nil)


```