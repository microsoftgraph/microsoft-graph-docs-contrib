---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



verificationDnsRecords, err := graphClient.Domains().ByDomainId("domain-id").VerificationDnsRecords().Get(context.Background(), nil)


```