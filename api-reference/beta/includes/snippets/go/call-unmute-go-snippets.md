---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/Item/Unmute"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnmutePostRequestBody()
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().Calls().ByCallId("call-id").Unmute().Post(context.Background(), requestBody, nil)


```