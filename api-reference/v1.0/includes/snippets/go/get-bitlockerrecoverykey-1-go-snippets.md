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

configuration := &graphinformationprotection.InformationProtectionBitlockerRecoveryKeyItemRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

recoveryKeys, err := graphClient.InformationProtection().Bitlocker().RecoveryKeys().ByBitlockerRecoveryKeyId("bitlockerRecoveryKey-id").Get(context.Background(), configuration)


```