---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphadmin.NewFavoritePostRequestBody()
messageIds := []string {
	"MC172851",
	"MC167983",
}
requestBody.SetMessageIds(messageIds)

favorite, err := graphClient.Admin().ServiceAnnouncement().Messages().Favorite().Post(context.Background(), requestBody, nil)


```