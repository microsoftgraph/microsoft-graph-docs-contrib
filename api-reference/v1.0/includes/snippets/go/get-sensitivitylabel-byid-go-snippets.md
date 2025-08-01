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
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {token}")
headers.Add("Client-Request-Id", "a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5")

configuration := &graphsecurity.DataSecurityAndGovernanceSensitivityLabelsItemRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sensitivityLabels, err := graphClient.Security().DataSecurityAndGovernance().SensitivityLabels().BySensitivityLabelId("sensitivityLabel-id").Get(context.Background(), configuration)


```