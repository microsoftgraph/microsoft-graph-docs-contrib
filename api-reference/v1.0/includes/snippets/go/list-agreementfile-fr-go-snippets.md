---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphagreements "github.com/microsoftgraph/msgraph-sdk-go/agreements"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Accept-Language", "fr-FR")

configuration := &graphagreements.ItemFileRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
file, err := graphClient.Agreements().ByAgreementId("agreement-id").File().Get(context.Background(), configuration)


```