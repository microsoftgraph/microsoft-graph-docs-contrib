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
certificateAuthorityType := graphmodels.INTERMEDIATE_CERTIFICATEAUTHORITYTYPE 
requestBody.SetCertificateAuthorityType(&certificateAuthorityType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
certificateAuthorities, err := graphClient.Directory().PublicKeyInfrastructure().CertificateBasedAuthConfigurations().ByCertificateBasedAuthPkiId("certificateBasedAuthPki-id").CertificateAuthorities().Post(context.Background(), requestBody, nil)


```