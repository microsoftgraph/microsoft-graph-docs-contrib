---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphstorage "github.com/microsoftgraph/msgraph-sdk-go/storage"
	  //other-imports
)


requestFilter := "containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082"

requestParameters := &graphstorage.FileStorageContainersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphstorage.FileStorageContainersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containers, err := graphClient.Storage().FileStorage().Containers().Get(context.Background(), configuration)


```