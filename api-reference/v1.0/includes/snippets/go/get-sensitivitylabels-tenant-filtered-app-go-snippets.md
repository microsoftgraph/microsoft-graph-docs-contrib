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


requestFilter := "applicableTo has 'file' and id in ('4e4234dd-377b-42a3-935b-0e42f138fa23','b7a21bba-8197-491f-a5d6-0d0f955397ca')"

requestParameters := &graphsecurity.DataSecurityAndGovernanceSensitivityLabelsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.DataSecurityAndGovernanceSensitivityLabelsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sensitivityLabels, err := graphClient.Security().DataSecurityAndGovernance().SensitivityLabels().Get(context.Background(), configuration)


```