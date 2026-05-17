---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewFileStorageContainer()
displayName := "Updated Name"
requestBody.SetDisplayName(&displayName) 
description := "Updated Description"
requestBody.SetDescription(&description) 
settings := graphmodels.NewFileStorageContainerSettings()
isOcrEnabled := false
settings.SetIsOcrEnabled(&isOcrEnabled) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containers, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").Patch(context.Background(), requestBody, nil)


```