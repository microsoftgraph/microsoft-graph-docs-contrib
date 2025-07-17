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

requestBody := graphmodels.NewSharePointRestoreSession()


siteRestoreArtifact := graphmodels.NewSiteRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
id := "1f1fccc3-a642-4f61-bf49-f37b9a888279"
restorePoint.SetId(&id) 
siteRestoreArtifact.SetRestorePoint(restorePoint)
destinationType := graphmodels.INPLACE_DESTINATIONTYPE 
siteRestoreArtifact.SetDestinationType(&destinationType) 
siteRestoreArtifact1 := graphmodels.NewSiteRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
id := "1f1fccc3-a642-4f61-bf49-f37b9a888280"
restorePoint.SetId(&id) 
siteRestoreArtifact1.SetRestorePoint(restorePoint)
destinationType := graphmodels.INPLACE_DESTINATIONTYPE 
siteRestoreArtifact1.SetDestinationType(&destinationType) 

siteRestoreArtifacts := []graphmodels.SiteRestoreArtifactable {
	siteRestoreArtifact,
	siteRestoreArtifact1,
}
requestBody.SetSiteRestoreArtifacts(siteRestoreArtifacts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sharePointRestoreSessions, err := graphClient.Solutions().BackupRestore().SharePointRestoreSessions().Post(context.Background(), requestBody, nil)


```