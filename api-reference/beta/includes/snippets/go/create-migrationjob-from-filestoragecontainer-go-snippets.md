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

requestBody := graphmodels.NewSharePointMigrationJob()
containerInfo := graphmodels.NewSharePointMigrationContainerInfo()
dataContainerUri := "https://spoxxx.blob.core.windows.net/data?sp=rw&sig="
containerInfo.SetDataContainerUri(&dataContainerUri) 
metadataContainerUri := "https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig="
containerInfo.SetMetadataContainerUri(&metadataContainerUri) 
encryptionKey := "base64 encoded key for AES-256-CBC encryption"
containerInfo.SetEncryptionKey(&encryptionKey) 
requestBody.SetContainerInfo(containerInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
migrationJobs, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").MigrationJobs().Post(context.Background(), requestBody, nil)


```