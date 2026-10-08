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

requestBody := graphdevicemanagement.NewUnpublishPostRequestBody()
cloudAppIds := []string {
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"40d0e128-de93-41dc-89ec-33d84bb662a0",
}
requestBody.SetCloudAppIds(cloudAppIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().CloudApps().Unpublish().Post(context.Background(), requestBody, nil)


```