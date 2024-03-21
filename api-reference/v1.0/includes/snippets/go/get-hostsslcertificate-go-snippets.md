---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



hostSslCertificates, err := graphClient.Security().ThreatIntelligence().HostSslCertificates().ByHostSslCertificateId("hostSslCertificate-id").Get(context.Background(), nil)


```