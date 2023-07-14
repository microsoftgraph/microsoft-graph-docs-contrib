---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
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

result, err := graphClient.Organization().ByOrganization().Id("organization-id").CertificateBasedAuthConfiguration().Post(context.Background(), requestBody, nil)


```