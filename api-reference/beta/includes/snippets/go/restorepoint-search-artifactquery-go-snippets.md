---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphsolutions.NewSearchPostRequestBody()
artifactQuery := graphmodels.NewArtifactQuery()
queryExpression := "(Sender -like 'abc@contoso.com') -and (Subject -like '*Check email*' -or Subject -like ' Important') -and (HasAttachment -eq 'true') -and (PitrDumpsterActionTriggeredTime -gt '2024-09-21T08:20:00.0000000Z')"
artifactQuery.SetQueryExpression(&queryExpression) 
artifactType := graphmodels.MESSAGE_RESTORABLEARTIFACT 
artifactQuery.SetArtifactType(&artifactType) 
requestBody.SetArtifactQuery(artifactQuery)
protectionUnitIds := []string {
	"23014d8c-71fe-4d00-a01a-31850bc5b42a",
}
requestBody.SetProtectionUnitIds(protectionUnitIds)
protectionTimePeriod := graphmodels.NewTimePeriod()
startDateTime , err := time.Parse(time.RFC3339, "2021-01-01T00:00:00Z")
protectionTimePeriod.SetStartDateTime(&startDateTime) 
requestBody.SetProtectionTimePeriod(protectionTimePeriod)
restorePointPreference := graphmodels.OLDEST_RESTOREPOINTPREFERENCE 
requestBody.SetRestorePointPreference(&restorePointPreference) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
search, err := graphClient.Solutions().BackupRestore().RestorePoints().Search().Post(context.Background(), requestBody, nil)


```