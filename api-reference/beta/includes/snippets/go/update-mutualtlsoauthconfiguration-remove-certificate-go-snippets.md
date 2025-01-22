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


certificateAuthority := graphmodels.NewCertificateAuthority()
isRootAuthority := true
certificateAuthority.SetIsRootAuthority(&isRootAuthority) 
certificateRevocationListUrl := "http://LakeshoreRetail.com/root.crl"
certificateAuthority.SetCertificateRevocationListUrl(&certificateRevocationListUrl) 
deltaCertificateRevocationListUrl := null
certificateAuthority.SetDeltaCertificateRevocationListUrl(&deltaCertificateRevocationListUrl) 
certificate := []byte("binary")
certificateAuthority.SetCertificate(&certificate) 
issuer := "Lakeshore Retail"
certificateAuthority.SetIssuer(&issuer) 
additionalData := map[string]interface{}{
	"issuerSubjectkeyIdentifier" : "SKI", 
}
certificateAuthority.SetAdditionalData(additionalData)

certificateAuthorities := []graphmodels.CertificateAuthorityable {
	certificateAuthority,
}
requestBody.SetCertificateAuthorities(certificateAuthorities)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mutualTlsOauthConfigurations, err := graphClient.Directory().CertificateAuthorities().MutualTlsOauthConfigurations().ByMutualTlsOauthConfigurationId("mutualTlsOauthConfiguration-id").Patch(context.Background(), requestBody, nil)


```