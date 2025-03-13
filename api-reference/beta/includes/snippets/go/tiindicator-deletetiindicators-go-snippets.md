---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

requestBody := graphsecurity.NewDeleteTiIndicatorsPostRequestBody()
value := []string {
	"id-value1",
	"id-value2",
}
requestBody.SetValue(value)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deleteTiIndicators, err := graphClient.Security().TiIndicators().DeleteTiIndicators().PostAsDeleteTiIndicatorsPostResponse(context.Background(), requestBody, nil)


```