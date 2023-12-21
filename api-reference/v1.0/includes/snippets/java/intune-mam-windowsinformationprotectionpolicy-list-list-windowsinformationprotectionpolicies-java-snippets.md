---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionPolicyCollectionPage windowsInformationProtectionPolicies = graphClient.deviceAppManagement().windowsInformationProtectionPolicies()
	.buildRequest()
	.get();

```