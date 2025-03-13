---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsInformationProtectionAppLockerFile windowsInformationProtectionAppLockerFile = new WindowsInformationProtectionAppLockerFile();
windowsInformationProtectionAppLockerFile.setOdataType("#microsoft.graph.windowsInformationProtectionAppLockerFile");
windowsInformationProtectionAppLockerFile.setDisplayName("Display Name value");
windowsInformationProtectionAppLockerFile.setFileHash("File Hash value");
byte[] file = Base64.getDecoder().decode("ZmlsZQ==");
windowsInformationProtectionAppLockerFile.setFile(file);
windowsInformationProtectionAppLockerFile.setVersion("Version value");
WindowsInformationProtectionAppLockerFile result = graphClient.deviceAppManagement().windowsInformationProtectionPolicies().byWindowsInformationProtectionPolicyId("{windowsInformationProtectionPolicy-id}").exemptAppLockerFiles().byWindowsInformationProtectionAppLockerFileId("{windowsInformationProtectionAppLockerFile-id}").patch(windowsInformationProtectionAppLockerFile);


```