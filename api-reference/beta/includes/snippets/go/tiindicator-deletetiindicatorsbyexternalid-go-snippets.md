---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsecurity.NewDeleteTiIndicatorsByExternalIdPostRequestBody()
value := []string {
	"externalId-value1",
	"externalId-value2",
}
requestBody.SetValue(value)

deleteTiIndicatorsByExternalId, err := graphClient.Security().TiIndicators().DeleteTiIndicatorsByExternalId().Post(context.Background(), requestBody, nil)


```