---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCertificateAuthorityAsEntity()
isRootAuthority := true
requestBody.SetIsRootAuthority(&isRootAuthority) 
certificate := []byte("mIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB....")
requestBody.SetCertificate(&certificate) 
issuer := "ExampleIssuer"
requestBody.SetIssuer(&issuer) 
issuerSubjectKeyIdentifier := " BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9"
requestBody.SetIssuerSubjectKeyIdentifier(&issuerSubjectKeyIdentifier) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
trustedCertificateAuthorities, err := graphClient.Directory().CertificateAuthorities().CertificateBasedApplicationConfigurations().ByCertificateBasedApplicationConfigurationId("certificateBasedApplicationConfiguration-id").TrustedCertificateAuthorities().Post(context.Background(), requestBody, nil)


```