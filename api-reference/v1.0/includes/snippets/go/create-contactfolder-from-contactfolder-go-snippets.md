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


requestBody := graphmodels.NewContactFolder()
displayName := "Family"
requestBody.SetDisplayName(&displayName) 

childFolders, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").ChildFolders().Post(context.Background(), requestBody, nil)


```