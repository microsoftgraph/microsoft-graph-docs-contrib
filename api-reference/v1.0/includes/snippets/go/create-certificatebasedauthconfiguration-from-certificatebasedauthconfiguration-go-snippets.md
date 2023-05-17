---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Organization/Item/CertificateBasedAuthConfiguration"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCertificateBasedAuthConfigurationPostRequestBody()
additionalData := map[string]interface{}{


 := graphmodels.New()
isRootAuthority := true
.SetIsRootAuthority(&isRootAuthority) 
certificate := "Binary"
.SetCertificate(&certificate) 

	certificateAuthorities := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Organization().ByOrganization().Id("organization-id").CertificateBasedAuthConfiguration().Post(context.Background(), requestBody, nil)


```