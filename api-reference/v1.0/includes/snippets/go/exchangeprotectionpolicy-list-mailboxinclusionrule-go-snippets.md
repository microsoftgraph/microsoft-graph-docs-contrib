---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-sdk-go/solutions"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <Access-Token>")

configuration := &graphsolutions.BackupRestoreExchangeProtectionPoliciesItemMailboxInclusionRulesRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mailboxInclusionRules, err := graphClient.Solutions().BackupRestore().ExchangeProtectionPolicies().ByExchangeProtectionPolicyId("exchangeProtectionPolicy-id").MailboxInclusionRules().Get(context.Background(), configuration)


```