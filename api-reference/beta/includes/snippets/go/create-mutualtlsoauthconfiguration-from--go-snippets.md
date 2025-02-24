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

requestBody := graphmodels.NewMutualTlsOauthConfiguration()
displayName := "DoorCamera_Model_X_TrustedCAs"
requestBody.SetDisplayName(&displayName) 
tlsClientAuthParameter := graphmodels.TLS_CLIENT_AUTH_SAN_URI_TLSCLIENTREGISTRATIONMETADATA 
requestBody.SetTlsClientAuthParameter(&tlsClientAuthParameter) 


certificateAuthority := graphmodels.NewCertificateAuthority()

certificateAuthorities := []graphmodels.CertificateAuthorityable {
	certificateAuthority,
}
requestBody.SetCertificateAuthorities(certificateAuthorities)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mutualTlsOauthConfigurations, err := graphClient.Directory().CertificateAuthorities().MutualTlsOauthConfigurations().Post(context.Background(), requestBody, nil)


```