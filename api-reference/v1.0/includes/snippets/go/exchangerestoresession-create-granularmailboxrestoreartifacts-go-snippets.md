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

requestBody := graphmodels.NewExchangeRestoreSession()


granularMailboxRestoreArtifact := graphmodels.NewGranularMailboxRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
additionalData := map[string]interface{}{
	"@odata.id" : "1f1fccc3-a642-4f61-bf49-f37b9a888279", 
}
restorePoint.SetAdditionalData(additionalData)
granularMailboxRestoreArtifact.SetRestorePoint(restorePoint)
destinationType := graphmodels.INPLACE_DESTINATIONTYPE 
granularMailboxRestoreArtifact.SetDestinationType(&destinationType) 
searchResponseId := "M2UyZDAwMDAwMDMxMzkzYTMyNj"
granularMailboxRestoreArtifact.SetSearchResponseId(&searchResponseId) 

granularMailboxRestoreArtifacts := []graphmodels.GranularMailboxRestoreArtifactable {
	granularMailboxRestoreArtifact,
}
requestBody.SetGranularMailboxRestoreArtifacts(granularMailboxRestoreArtifacts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exchangeRestoreSessions, err := graphClient.Solutions().BackupRestore().ExchangeRestoreSessions().Post(context.Background(), requestBody, nil)


```