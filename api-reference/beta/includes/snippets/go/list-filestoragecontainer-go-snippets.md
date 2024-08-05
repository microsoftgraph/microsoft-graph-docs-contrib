---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphstorage "github.com/microsoftgraph/msgraph-beta-sdk-go/storage"
	  //other-imports
)


requestFilter := "containerTypeId eq {containerTypeId}"

requestParameters := &graphstorage.StorageFileStorageContainersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphstorage.StorageFileStorageContainersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containers, err := graphClient.Storage().FileStorage().Containers().Get(context.Background(), configuration)


```