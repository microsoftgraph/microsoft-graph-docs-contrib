---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"X-MS-CloudPC-USGovCloudTenantAADToken": "{token}",
}
configuration := &graphconfig.CrossCloudGovernmentOrganizationMappingRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().CrossCloudGovernmentOrganizationMapping().Get(context.Background(), configuration)


```