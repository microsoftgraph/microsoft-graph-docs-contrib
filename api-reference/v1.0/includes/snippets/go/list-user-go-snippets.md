---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



allowedUsers, err := graphClient.Print().Shares().ByPrinterShareId("printerShare-id").AllowedUsers().Get(context.Background(), nil)


```