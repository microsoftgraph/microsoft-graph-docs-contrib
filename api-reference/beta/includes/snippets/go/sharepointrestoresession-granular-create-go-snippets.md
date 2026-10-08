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

requestBody := graphmodels.NewSharePointRestoreSession()


granularSiteRestoreArtifact := graphmodels.NewGranularSiteRestoreArtifact()
browseSessionId := "eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6"
granularSiteRestoreArtifact.SetBrowseSessionId(&browseSessionId) 
id := "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2"
granularSiteRestoreArtifact.SetId(&id) 
granularSiteRestoreArtifact1 := graphmodels.NewGranularSiteRestoreArtifact()
browseSessionId := "eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6"
granularSiteRestoreArtifact1.SetBrowseSessionId(&browseSessionId) 
id := "b535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2"
granularSiteRestoreArtifact1.SetId(&id) 

granularSiteRestoreArtifacts := []graphmodels.GranularSiteRestoreArtifactable {
	granularSiteRestoreArtifact,
	granularSiteRestoreArtifact1,
}
requestBody.SetGranularSiteRestoreArtifacts(granularSiteRestoreArtifacts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sharePointRestoreSessions, err := graphClient.Solutions().BackupRestore().SharePointRestoreSessions().Post(context.Background(), requestBody, nil)


```