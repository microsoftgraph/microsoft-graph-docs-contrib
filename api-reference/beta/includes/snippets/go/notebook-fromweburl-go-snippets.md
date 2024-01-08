---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemGetNotebookFromWebUrlPostRequestBody()
webUrl := "webUrl value"
requestBody.SetWebUrl(&webUrl) 

getNotebookFromWebUrl, err := graphClient.Me().Onenote().Notebooks().GetNotebookFromWebUrl().Post(context.Background(), requestBody, nil)


```