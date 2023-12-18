---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



dailyPrintUsageByPrinter, err := graphClient.Reports().DailyPrintUsageByPrinter().ByPrintUsageByPrinterId("printUsageByPrinter-id").Get(context.Background(), nil)


```