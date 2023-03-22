---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("X-MS-CloudPC-USGovCloudTenantAADToken", "{token}")

configuration := &graphconfig.DeviceManagementVirtualEndpointCrossCloudGovernmentOrganizationMappingRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCrossCloudGovernmentOrganizationMappingPostRequestBody()

graphClient.DeviceManagement().VirtualEndpoint().CrossCloudGovernmentOrganizationMapping().Post(context.Background(), requestBody, configuration)


```