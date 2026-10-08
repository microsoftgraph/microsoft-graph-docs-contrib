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

requestBody := graphmodels.NewOneDriveForBusinessRestoreSession()


granularDriveRestoreArtifact := graphmodels.NewGranularDriveRestoreArtifact()
browseSessionId := "eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6"
granularDriveRestoreArtifact.SetBrowseSessionId(&browseSessionId) 
id := "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2"
granularDriveRestoreArtifact.SetId(&id) 
granularDriveRestoreArtifact1 := graphmodels.NewGranularDriveRestoreArtifact()
browseSessionId := "eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6"
granularDriveRestoreArtifact1.SetBrowseSessionId(&browseSessionId) 
id := "b535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2"
granularDriveRestoreArtifact1.SetId(&id) 

granularDriveRestoreArtifacts := []graphmodels.GranularDriveRestoreArtifactable {
	granularDriveRestoreArtifact,
	granularDriveRestoreArtifact1,
}
requestBody.SetGranularDriveRestoreArtifacts(granularDriveRestoreArtifacts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
oneDriveForBusinessRestoreSessions, err := graphClient.Solutions().BackupRestore().OneDriveForBusinessRestoreSessions().Post(context.Background(), requestBody, nil)


```