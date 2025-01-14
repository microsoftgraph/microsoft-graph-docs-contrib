---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)


requestAadgdc := "AM4P"
requestAadgsu := "ssprprod-a"

requestParameters := &graphusers.ItemAuthenticationOperationsItemRequestBuilderGetQueryParameters{
	Aadgdc: &requestAadgdc,
	Aadgsu: &requestAadgsu,
}
configuration := &graphusers.ItemAuthenticationOperationsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
operations, err := graphClient.Users().ByUserId("user-id").Authentication().Operations().ByLongRunningOperationId("longRunningOperation-id").Get(context.Background(), configuration)


```