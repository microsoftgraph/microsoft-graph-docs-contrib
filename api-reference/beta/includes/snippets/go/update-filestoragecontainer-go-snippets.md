---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
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
itemDefaultSensitivityLabelId := "3d8789ae-7375-4ded-8eeb-d6bc226e42fb"
settings.SetItemDefaultSensitivityLabelId(&itemDefaultSensitivityLabelId) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containers, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").Patch(context.Background(), requestBody, nil)


```