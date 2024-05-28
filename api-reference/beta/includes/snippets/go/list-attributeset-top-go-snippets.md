---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)


requestTop := int32(10)

requestParameters := &graphdirectory.DirectoryAttributeSetsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphdirectory.DirectoryAttributeSetsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
attributeSets, err := graphClient.Directory().AttributeSets().Get(context.Background(), configuration)


```