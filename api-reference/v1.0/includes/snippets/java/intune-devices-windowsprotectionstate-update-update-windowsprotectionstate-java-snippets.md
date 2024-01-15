---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsProtectionState windowsProtectionState = new WindowsProtectionState();
windowsProtectionState.malwareProtectionEnabled = true;
windowsProtectionState.deviceState = EnumSet.of(WindowsDeviceHealthState.FULL_SCAN_PENDING);
windowsProtectionState.realTimeProtectionEnabled = true;
windowsProtectionState.networkInspectionSystemEnabled = true;
windowsProtectionState.quickScanOverdue = true;
windowsProtectionState.fullScanOverdue = true;
windowsProtectionState.signatureUpdateOverdue = true;
windowsProtectionState.rebootRequired = true;
windowsProtectionState.fullScanRequired = true;
windowsProtectionState.engineVersion = "Engine Version value";
windowsProtectionState.signatureVersion = "Signature Version value";
windowsProtectionState.antiMalwareVersion = "Anti Malware Version value";
windowsProtectionState.lastQuickScanDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:27.5900669+00:00");
windowsProtectionState.lastFullScanDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:01:44.9405639+00:00");
windowsProtectionState.lastQuickScanSignatureVersion = "Last Quick Scan Signature Version value";
windowsProtectionState.lastFullScanSignatureVersion = "Last Full Scan Signature Version value";
windowsProtectionState.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
windowsProtectionState.productStatus = EnumSet.of(WindowsDefenderProductStatus.SERVICE_NOT_RUNNING);
windowsProtectionState.isVirtualMachine = true;
windowsProtectionState.tamperProtectionEnabled = true;

graphClient.deviceManagement().detectedApps("{detectedAppId}").managedDevices("{managedDeviceId}").windowsProtectionState()
	.buildRequest()
	.patch(windowsProtectionState);

```