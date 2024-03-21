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



sslCertificates, err := graphClient.Security().ThreatIntelligence().SslCertificates().BySslCertificateId("sslCertificate-id").Get(context.Background(), nil)


```