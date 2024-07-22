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

requestBody := graphmodels.NewExchangeRestoreSession()


mailboxRestoreArtifact := graphmodels.NewMailboxRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
additionalData := map[string]interface{}{
	"@odata.id" : "1f1fccc3-a642-4f61-bf49-f37b9a888279", 
}
restorePoint.SetAdditionalData(additionalData)
mailboxRestoreArtifact.SetRestorePoint(restorePoint)
destinationType := graphmodels.INPLACE_DESTINATIONTYPE 
mailboxRestoreArtifact.SetDestinationType(&destinationType) 
mailboxRestoreArtifact1 := graphmodels.NewMailboxRestoreArtifact()
restorePoint := graphmodels.NewRestorePoint()
additionalData := map[string]interface{}{
	"@odata.id" : "1f1fccc3-a642-4f61-bf49-f37b9a888280", 
}
restorePoint.SetAdditionalData(additionalData)
mailboxRestoreArtifact1.SetRestorePoint(restorePoint)
destinationType := graphmodels.INPLACE_DESTINATIONTYPE 
mailboxRestoreArtifact1.SetDestinationType(&destinationType) 

mailboxRestoreArtifacts := []graphmodels.MailboxRestoreArtifactable {
	mailboxRestoreArtifact,
	mailboxRestoreArtifact1,
}
requestBody.SetMailboxRestoreArtifacts(mailboxRestoreArtifacts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exchangeRestoreSessions, err := graphClient.Solutions().BackupRestore().ExchangeRestoreSessions().Post(context.Background(), requestBody, nil)


```