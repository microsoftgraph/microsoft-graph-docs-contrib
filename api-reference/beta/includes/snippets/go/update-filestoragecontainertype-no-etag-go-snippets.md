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

requestBody := graphmodels.NewFileStorageContainerType()
settings := graphmodels.NewFileStorageContainerTypeSettings()
urlTemplate := "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}"
settings.SetUrlTemplate(&urlTemplate) 
isItemVersioningEnabled := true
settings.SetIsItemVersioningEnabled(&isItemVersioningEnabled) 
isSharingRestricted := false
settings.SetIsSharingRestricted(&isSharingRestricted) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
containerTypes, err := graphClient.Storage().FileStorage().ContainerTypes().ByFileStorageContainerTypeId("fileStorageContainerType-id").Patch(context.Background(), requestBody, nil)


```