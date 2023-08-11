---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionAppLockerFile windowsInformationProtectionAppLockerFile = graphClient.deviceAppManagement().windowsInformationProtectionPolicies("{windowsInformationProtectionPolicyId}").exemptAppLockerFiles("{windowsInformationProtectionAppLockerFileId}")
	.buildRequest()
	.get();

```