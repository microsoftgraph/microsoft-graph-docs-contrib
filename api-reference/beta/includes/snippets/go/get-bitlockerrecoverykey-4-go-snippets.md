---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphinformationprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/informationprotection"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "Dsreg/10.0")
headers.Add("ocp-client-name", "My Friendly Client")
headers.Add("ocp-client-version", "1.2")

requestParameters := &graphinformationprotection.BitlockerRecoveryKeysItemRequestBuilderGetQueryParameters{
	Select: [] string {"key"},
}
configuration := &graphinformationprotection.BitlockerRecoveryKeysItemRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
recoveryKeys, err := graphClient.InformationProtection().Bitlocker().RecoveryKeys().ByBitlockerRecoveryKeyId("bitlockerRecoveryKey-id").Get(context.Background(), configuration)


```