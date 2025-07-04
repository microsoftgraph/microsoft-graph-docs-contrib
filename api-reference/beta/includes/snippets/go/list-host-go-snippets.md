---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)


requestCount := true
requestTop := int32(1)
requestSkip := int32(5)

requestParameters := &graphsecurity.ThreatIntelligenceHostsItemSslCertificatesRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphsecurity.ThreatIntelligenceHostsItemSslCertificatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sslCertificates, err := graphClient.Security().ThreatIntelligence().Hosts().ByHostId("host-id").SslCertificates().Get(context.Background(), configuration)


```