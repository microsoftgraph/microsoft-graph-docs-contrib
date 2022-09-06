---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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

graphClient.OrganizationById("organization-id").CertificateBasedAuthConfiguration().Post(requestBody)


```