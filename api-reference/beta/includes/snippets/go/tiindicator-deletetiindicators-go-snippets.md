---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Security/TiIndicators/DeleteTiIndicators"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeleteTiIndicatorsPostRequestBody()
value := []string {
	"id-value1",
	"id-value2",

}
requestBody.SetValue(value)

result, err := graphClient.Security().TiIndicators().DeleteTiIndicators().Post(context.Background(), requestBody, nil)


```