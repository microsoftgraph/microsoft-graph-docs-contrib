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

requestParameters := &graphstorage.FileStorageDeletedContainersItemRequestBuilderGetQueryParameters{
	Select: [] string {"*","members"},
}
configuration := &graphstorage.FileStorageDeletedContainersItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deletedContainers, err := graphClient.Storage().FileStorage().DeletedContainers().ByFileStorageContainerId("fileStorageContainer-id").Get(context.Background(), configuration)


```