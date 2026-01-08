---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewExternalCertificateAuthorityCertificate()
certificate := "-----BEGIN CERTIFICATE-----\nMIIBIjANBgkqh..."
requestBody.SetCertificate(&certificate) 
chain := "-----BEGIN CERTIFICATE-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AM..."
requestBody.SetChain(&chain) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalCertificateAuthorityCertificates, err := graphClient.NetworkAccess().Tls().ExternalCertificateAuthorityCertificates().ByExternalCertificateAuthorityCertificateId("externalCertificateAuthorityCertificate-id").Patch(context.Background(), requestBody, nil)


```