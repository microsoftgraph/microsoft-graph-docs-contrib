---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcontacts "github.com/microsoftgraph/msgraph-beta-sdk-go/contacts"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=minimal")

requestParameters := &graphcontacts.ContactsDeltaRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","jobTitle","mail"},
}
configuration := &graphcontacts.ContactsDeltaRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delta, err := graphClient.Contacts().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```