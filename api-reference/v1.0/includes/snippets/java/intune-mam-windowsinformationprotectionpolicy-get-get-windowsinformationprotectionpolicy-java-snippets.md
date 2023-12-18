---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionPolicy windowsInformationProtectionPolicy = graphClient.deviceAppManagement().windowsInformationProtectionPolicies("{windowsInformationProtectionPolicyId}")
	.buildRequest()
	.get();

```