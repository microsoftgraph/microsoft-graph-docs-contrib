---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Admin/ServiceAnnouncement/Messages/MarkRead"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMarkReadPostRequestBody()
messageIds := []string {
	"MC172851",
	"MC167983",

}
requestBody.SetMessageIds(messageIds)

result, err := graphClient.Admin().ServiceAnnouncement().Messages().MarkRead().Post(context.Background(), requestBody, nil)


```