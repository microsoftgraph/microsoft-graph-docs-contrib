---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionAppLockerFileCollectionPage exemptAppLockerFiles = graphClient.deviceAppManagement().windowsInformationProtectionPolicies("{windowsInformationProtectionPolicyId}").exemptAppLockerFiles()
	.buildRequest()
	.get();

```