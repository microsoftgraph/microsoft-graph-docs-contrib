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

requestBody := graphmodels.NewCertificateBasedAuthConfiguration()


certificateAuthority := graphmodels.NewCertificateAuthority()
isRootAuthority := true
certificateAuthority.SetIsRootAuthority(&isRootAuthority) 
certificate := []byte("binary")
certificateAuthority.SetCertificate(&certificate) 

certificateAuthorities := []graphmodels.CertificateAuthorityable {
	certificateAuthority,
}
requestBody.SetCertificateAuthorities(certificateAuthorities)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
certificateBasedAuthConfiguration, err := graphClient.Organization().ByOrganizationId("organization-id").CertificateBasedAuthConfiguration().Post(context.Background(), requestBody, nil)


```