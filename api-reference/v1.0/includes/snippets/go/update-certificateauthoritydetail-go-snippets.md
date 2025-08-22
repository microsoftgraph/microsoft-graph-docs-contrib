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

requestBody := graphmodels.NewCertificateAuthorityDetail()
isIssuerHintEnabled := true
requestBody.SetIsIssuerHintEnabled(&isIssuerHintEnabled) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
certificateAuthorities, err := graphClient.Directory().PublicKeyInfrastructure().CertificateBasedAuthConfigurations().ByCertificateBasedAuthPkiId("certificateBasedAuthPki-id").CertificateAuthorities().ByCertificateAuthorityDetailId("certificateAuthorityDetail-id").Patch(context.Background(), requestBody, nil)


```