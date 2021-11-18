---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"certificateAuthorities":  []Object {
	}
}
options := &msgraphsdk.CertificateBasedAuthConfigurationRequestBuilderPostOptions{
	Body: requestBody,
}
organizationId := "organization-id"
graphClient.OrganizationById(&organizationId).CertificateBasedAuthConfiguration().Post(options)


```