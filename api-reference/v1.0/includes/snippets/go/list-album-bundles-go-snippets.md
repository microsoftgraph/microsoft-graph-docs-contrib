---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "bundle/album ne null"

requestParameters := &graphdrives.DriveItemBundlesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdrives.DriveItemBundlesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drives().ByDriveId("drive-id").Bundles().Get(context.Background(), configuration)


```