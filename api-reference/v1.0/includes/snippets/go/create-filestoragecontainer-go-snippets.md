---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
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
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containers, err := graphClient.Storage().FileStorage().Containers().Post(context.Background(), requestBody, nil)


```