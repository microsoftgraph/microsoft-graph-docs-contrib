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

requestBody := graphstorage.NewRestorePostRequestBody()
ids := []string {
	"5d625d33-338c-4a77-a98a-3e287116440c",
	"73133853-48f2-4956-bc4a-03f8d1675042",
}
requestBody.SetIds(ids)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
restore, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").RecycleBin().Items().Restore().PostAsRestorePostResponse(context.Background(), requestBody, nil)


```