---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphinformationprotection "github.com/microsoftgraph/msgraph-sdk-go/informationprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "Dsreg/10.0")
headers.Add("ocp-client-name", "My Friendly Client")
headers.Add("ocp-client-version", "1.2")


requestFilter := "deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'"

requestParameters := &graphinformationprotection.InformationProtectionBitlockerRecoveryKeysRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphinformationprotection.InformationProtectionBitlockerRecoveryKeysRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

recoveryKeys, err := graphClient.InformationProtection().Bitlocker().RecoveryKeys().Get(context.Background(), configuration)


```