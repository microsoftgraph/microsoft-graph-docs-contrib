---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewFileStorageContainer()
displayName := "My Application Storage Container"
requestBody.SetDisplayName(&displayName) 
description := "Description of My Application Storage Container"
requestBody.SetDescription(&description) 
containerTypeId := uuid.MustParse("91710488-5756-407f-9046-fbe5f0b4de73")
requestBody.SetContainerTypeId(&containerTypeId) 
settings := graphmodels.NewFileStorageContainerSettings()
isOcrEnabled := true
settings.SetIsOcrEnabled(&isOcrEnabled) 
itemMajorVersionLimit := int32(50)
settings.SetItemMajorVersionLimit(&itemMajorVersionLimit) 
isItemVersioningEnabled := true
settings.SetIsItemVersioningEnabled(&isItemVersioningEnabled) 
itemDefaultSensitivityLabelId := "3d8789ae-7375-4ded-8eeb-d6bc226e42fb"
settings.SetItemDefaultSensitivityLabelId(&itemDefaultSensitivityLabelId) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containers, err := graphClient.Storage().FileStorage().Containers().Post(context.Background(), requestBody, nil)


```