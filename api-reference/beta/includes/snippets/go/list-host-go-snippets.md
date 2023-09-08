---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestCount := true
requestTop := int32(1)
requestSkip := int32(5)

requestParameters := &graphsecurity.SecurityThreatIntelligenceHostItemSslCertificatesRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphsecurity.SecurityThreatIntelligenceHostItemSslCertificatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

sslCertificates, err := graphClient.Security().ThreatIntelligence().Hosts().ByHostId("host-id").SslCertificates().Get(context.Background(), configuration)


```