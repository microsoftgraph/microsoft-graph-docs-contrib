---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"X-MS-CloudPC-USGovCloudTenantAADToken": "{token}",
}
configuration := &graphconfig.CrossCloudGovernmentOrganizationMappingRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCrossCloudGovernmentOrganizationMappingPostRequestBody()

graphClient.DeviceManagement().VirtualEndpoint().CrossCloudGovernmentOrganizationMapping().Post(context.Background(), requestBody, configuration)


```