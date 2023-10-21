---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionAppLockerFile windowsInformationProtectionAppLockerFile = new WindowsInformationProtectionAppLockerFile();
windowsInformationProtectionAppLockerFile.displayName = "Display Name value";
windowsInformationProtectionAppLockerFile.fileHash = "File Hash value";
windowsInformationProtectionAppLockerFile.file = Base64.getDecoder().decode("ZmlsZQ==");
windowsInformationProtectionAppLockerFile.version = "Version value";

graphClient.deviceAppManagement().windowsInformationProtectionPolicies("{windowsInformationProtectionPolicyId}").exemptAppLockerFiles()
	.buildRequest()
	.post(windowsInformationProtectionAppLockerFile);

```