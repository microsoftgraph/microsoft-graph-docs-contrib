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

requestBody := graphmodels.NewSiteRestoreArtifactsBulkAdditionRequest()
displayName := "SPO-BulkRestoreArtifacts"
requestBody.SetDisplayName(&displayName) 
siteWebUrls := []string {
	"https: //contoso1.sharepoint.com",
	"https: //contoso2.sharepoint.com",
	"https: //contoso3.sharepoint.com",
}
requestBody.SetSiteWebUrls(siteWebUrls)
protectionTimePeriod := graphmodels.NewTimePeriod()
startDateTime , err := time.Parse(time.RFC3339, "2024-01-01T00:00:00Z")
protectionTimePeriod.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2024-01-08T00:00:00Z")
protectionTimePeriod.SetEndDateTime(&endDateTime) 
requestBody.SetProtectionTimePeriod(protectionTimePeriod)
destinationType := graphmodels.NEW_DESTINATIONTYPE 
requestBody.SetDestinationType(&destinationType) 
tags := graphmodels.FASTRESTORE_RESTOREPOINTTAGS 
requestBody.SetTags(&tags) 
restorePointPreference := graphmodels.LATEST_RESTOREPOINTPREFERENCE 
requestBody.SetRestorePointPreference(&restorePointPreference) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
siteRestoreArtifactsBulkAdditionRequests, err := graphClient.Solutions().BackupRestore().SharePointRestoreSessions().BySharePointRestoreSessionId("sharePointRestoreSession-id").SiteRestoreArtifactsBulkAdditionRequests().Post(context.Background(), requestBody, nil)


```