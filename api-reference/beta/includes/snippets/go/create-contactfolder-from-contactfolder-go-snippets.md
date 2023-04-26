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


requestBody := graphmodels.NewContactFolder()
displayName := "Family"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").ChildFolders().Post(context.Background(), requestBody, nil)


```