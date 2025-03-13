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

requestBody := graphsecurity.NewDeleteTiIndicatorsByExternalIdPostRequestBody()
value := []string {
	"externalId-value1",
	"externalId-value2",
}
requestBody.SetValue(value)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deleteTiIndicatorsByExternalId, err := graphClient.Security().TiIndicators().DeleteTiIndicatorsByExternalId().PostAsDeleteTiIndicatorsByExternalIdPostResponse(context.Background(), requestBody, nil)


```