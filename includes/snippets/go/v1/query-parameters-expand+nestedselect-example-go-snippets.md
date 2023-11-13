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


requestParameters := &graphdrives.DriveItemRootRequestBuilderGetQueryParameters{
	Expand: [] string {"children($select=id,name)"},
}
configuration := &graphdrives.DriveItemRootRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

root, err := graphClient.Drives().ByDriveId("drive-id").Root().Get(context.Background(), configuration)


```