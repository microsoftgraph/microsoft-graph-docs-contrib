---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestSearch := "\"subject/commonName:microsoft.com\""
requestCount := true
requestTop := int32(1)

requestParameters := &graphsecurity.SecurityThreatIntelligenceSslCertificatesRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Count: &requestCount,
	Top: &requestTop,
}
configuration := &graphsecurity.SecurityThreatIntelligenceSslCertificatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

sslCertificates, err := graphClient.Security().ThreatIntelligence().SslCertificates().Get(context.Background(), configuration)


```