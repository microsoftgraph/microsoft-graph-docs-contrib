---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewContactFolder()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId) 
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 

contactFolders, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").Patch(context.Background(), requestBody, nil)


```