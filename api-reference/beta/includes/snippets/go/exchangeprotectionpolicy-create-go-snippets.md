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

requestBody := graphmodels.NewExchangeProtectionPolicy()
displayName := "Exchange Protection Policy"
requestBody.SetDisplayName(&displayName) 


mailboxProtectionUnit := graphmodels.NewMailboxProtectionUnit()
directoryObjectId := "cdd3a849-dcaf-4a85-af82-7e39fc14019a"
mailboxProtectionUnit.SetDirectoryObjectId(&directoryObjectId) 
mailboxProtectionUnit1 := graphmodels.NewMailboxProtectionUnit()
directoryObjectId := "9bc069da-b746-41a4-89ab-26125c6373c7"
mailboxProtectionUnit1.SetDirectoryObjectId(&directoryObjectId) 
mailboxProtectionUnit2 := graphmodels.NewMailboxProtectionUnit()
directoryObjectId := "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7"
mailboxProtectionUnit2.SetDirectoryObjectId(&directoryObjectId) 

mailboxProtectionUnits := []graphmodels.MailboxProtectionUnitable {
	mailboxProtectionUnit,
	mailboxProtectionUnit1,
	mailboxProtectionUnit2,
}
requestBody.SetMailboxProtectionUnits(mailboxProtectionUnits)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exchangeProtectionPolicies, err := graphClient.Solutions().BackupRestore().ExchangeProtectionPolicies().Post(context.Background(), requestBody, nil)


```