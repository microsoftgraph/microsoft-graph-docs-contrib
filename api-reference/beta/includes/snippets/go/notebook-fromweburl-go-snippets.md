---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Onenote/Notebooks/GetNotebookFromWebUrl"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetNotebookFromWebUrlPostRequestBody()
webUrl := "webUrl value"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Onenote().Notebooks().GetNotebookFromWebUrl().Post(context.Background(), requestBody, nil)


```