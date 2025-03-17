---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

requestBody := graphsites.NewAddToDrivePostRequestBody()
driveId := "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd"
requestBody.SetDriveId(&driveId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
addToDrive, err := graphClient.Sites().BySiteId("site-id").ContentModels().ByContentModelId("contentModel-id").AddToDrive().Post(context.Background(), requestBody, nil)


```