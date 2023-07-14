---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-sdk-go/admin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphadmin.NewUnarchivePostRequestBody()
messageIds := []string {
	"MC172851",
	"MC167983",
}
requestBody.SetMessageIds(messageIds)

result, err := graphClient.Admin().ServiceAnnouncement().Messages().Unarchive().Post(context.Background(), requestBody, nil)


```