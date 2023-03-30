---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/CrossCloudGovernmentOrganizationMapping"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("X-MS-CloudPC-USGovCloudTenantAADToken", "{token}")

configuration := &graphconfig.DeviceManagementVirtualEndpointCrossCloudGovernmentOrganizationMappingRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCrossCloudGovernmentOrganizationMappingPostRequestBody()

graphClient.DeviceManagement().VirtualEndpoint().CrossCloudGovernmentOrganizationMapping().Post(context.Background(), requestBody, configuration)


```