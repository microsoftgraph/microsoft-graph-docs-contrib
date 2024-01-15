---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Organization organization = new Organization();
organization.mobileDeviceManagementAuthority = MdmAuthority.INTUNE;

graphClient.organization("{organizationId}")
	.buildRequest()
	.patch(organization);

```