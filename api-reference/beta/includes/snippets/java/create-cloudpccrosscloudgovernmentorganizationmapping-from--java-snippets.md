---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("X-MS-CloudPC-USGovCloudTenantAADToken", "{token}"));

CloudPcCrossCloudGovernmentOrganizationMapping cloudPcCrossCloudGovernmentOrganizationMapping = new CloudPcCrossCloudGovernmentOrganizationMapping();

graphClient.deviceManagement().virtualEndpoint().crossCloudGovernmentOrganizationMapping()
	.buildRequest( requestOptions )
	.post(cloudPcCrossCloudGovernmentOrganizationMapping);

```