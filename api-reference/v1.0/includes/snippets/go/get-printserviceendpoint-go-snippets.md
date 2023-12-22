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



endpoints, err := graphClient.Print().Services().ByPrintServiceId("printService-id").Endpoints().ByPrintServiceEndpointId("printServiceEndpoint-id").Get(context.Background(), nil)


```