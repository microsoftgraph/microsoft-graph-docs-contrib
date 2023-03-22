---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("X-MS-CloudPC-USGovCloudTenantAADToken", "{token}")

configuration := &graphconfig.DeviceManagementVirtualEndpointCrossCloudGovernmentOrganizationMappingRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().CrossCloudGovernmentOrganizationMapping().Get(context.Background(), configuration)


```