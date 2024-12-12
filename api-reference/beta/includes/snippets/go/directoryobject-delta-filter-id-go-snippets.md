---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectoryobjects "github.com/microsoftgraph/msgraph-beta-sdk-go/directoryobjects"
	  //other-imports
)


requestFilter := "id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'"

requestParameters := &graphdirectoryobjects.DirectoryObjectsDeltaRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectoryobjects.DirectoryObjectsDeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delta, err := graphClient.DirectoryObjects().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```