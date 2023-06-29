---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MdmWindowsInformationProtectionPolicyCollectionPage mdmWindowsInformationProtectionPolicies = graphClient.deviceAppManagement().mdmWindowsInformationProtectionPolicies()
	.buildRequest()
	.get();

```