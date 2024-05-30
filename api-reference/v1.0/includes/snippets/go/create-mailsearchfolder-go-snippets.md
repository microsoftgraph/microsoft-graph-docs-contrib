---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
childFolders, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").ChildFolders().Post(context.Background(), requestBody, nil)


```