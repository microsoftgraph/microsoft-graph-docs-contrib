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
headers.Add("Client-Request-Id", "7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a")


requestOwnerEmail := "bob@contoso.com"

requestParameters := &graphsecurity.DataSecurityAndGovernanceSensitivityLabelsItemRightsRequestBuilderGetQueryParameters{
	OwnerEmail: &requestOwnerEmail,
}
configuration := &graphsecurity.DataSecurityAndGovernanceSensitivityLabelsItemRightsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
rights, err := graphClient.Security().DataSecurityAndGovernance().SensitivityLabels().BySensitivityLabelId("sensitivityLabel-id").Rights().Get(context.Background(), configuration)


```