---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

certificateBasedAuthConfiguration, err := graphClient.Organization().ByOrganizationId("organization-id").CertificateBasedAuthConfiguration().Post(context.Background(), requestBody, nil)


```