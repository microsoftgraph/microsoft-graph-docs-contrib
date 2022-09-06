---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Accept-Language": "0",
}
configuration := &graphconfig.BrandingRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.OrganizationById("organization-id").Branding().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```