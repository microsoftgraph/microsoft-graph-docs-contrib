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
name := "Contoso Enterprise CA"
requestBody.SetName(&name) 
commonName := "Contoso Enterprise Root CA"
requestBody.SetCommonName(&commonName) 
organizationName := "Contoso Ltd"
requestBody.SetOrganizationName(&organizationName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalCertificateAuthorityCertificates, err := graphClient.NetworkAccess().Tls().ExternalCertificateAuthorityCertificates().Post(context.Background(), requestBody, nil)


```