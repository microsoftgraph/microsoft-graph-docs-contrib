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
structuredQueryExpression := graphmodels.NewRestoreSearchArtifactQueryExpression()
senders := []string {
	"abc@contoso.com",
}
structuredQueryExpression.SetSenders(senders)
subjects := []string {
	"Check email",
	"Important",
}
structuredQueryExpression.SetSubjects(subjects)
hasAttachment := true
structuredQueryExpression.SetHasAttachment(&hasAttachment) 
items := []graphmodels.GranularRestoreItemsable {
	granularRestoreItems := graphmodels.EMAIL_GRANULARRESTOREITEMS 
	structuredQueryExpression.SetGranularRestoreItems(&granularRestoreItems)
}
structuredQueryExpression.SetItems(items)
artifactQuery.SetStructuredQueryExpression(structuredQueryExpression)
requestBody.SetArtifactQuery(artifactQuery)
protectionUnitIds := []string {
	"23014d8c-71fe-4d00-a01a-31850bc5b42a",
}
requestBody.SetProtectionUnitIds(protectionUnitIds)
protectionTimePeriod := graphmodels.NewTimePeriod()
startDateTime , err := time.Parse(time.RFC3339, "2021-01-01T00:00:00Z")
protectionTimePeriod.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2021-01-30T00:00:00Z")
protectionTimePeriod.SetEndDateTime(&endDateTime) 
requestBody.SetProtectionTimePeriod(protectionTimePeriod)
restorePointPreference := graphmodels.OLDEST_RESTOREPOINTPREFERENCE 
requestBody.SetRestorePointPreference(&restorePointPreference) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
search, err := graphClient.Solutions().BackupRestore().RestorePoints().Search().Post(context.Background(), requestBody, nil)


```