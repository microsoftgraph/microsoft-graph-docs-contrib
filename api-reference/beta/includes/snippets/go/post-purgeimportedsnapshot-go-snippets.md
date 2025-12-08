---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

requestBody := graphdevicemanagement.NewPurgeImportedSnapshotPostRequestBody()
snapshotIds := []string {
	"7e8c3054-bda1-4e37-81c5-7d1b080a8849",
	"715c8075-6892-42f3-9550-40b4b48e13d2",
}
requestBody.SetSnapshotIds(snapshotIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Snapshots().PurgeImportedSnapshot().Post(context.Background(), requestBody, nil)


```