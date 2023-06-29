---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SoftwareUpdateStatusSummary softwareUpdateStatusSummary = new SoftwareUpdateStatusSummary();
softwareUpdateStatusSummary.displayName = "Display Name value";
softwareUpdateStatusSummary.compliantDeviceCount = 4;
softwareUpdateStatusSummary.nonCompliantDeviceCount = 7;
softwareUpdateStatusSummary.remediatedDeviceCount = 5;
softwareUpdateStatusSummary.errorDeviceCount = 0;
softwareUpdateStatusSummary.unknownDeviceCount = 2;
softwareUpdateStatusSummary.conflictDeviceCount = 3;
softwareUpdateStatusSummary.notApplicableDeviceCount = 8;
softwareUpdateStatusSummary.compliantUserCount = 2;
softwareUpdateStatusSummary.nonCompliantUserCount = 5;
softwareUpdateStatusSummary.remediatedUserCount = 3;
softwareUpdateStatusSummary.errorUserCount = 14;
softwareUpdateStatusSummary.unknownUserCount = 0;
softwareUpdateStatusSummary.conflictUserCount = 1;
softwareUpdateStatusSummary.notApplicableUserCount = 6;

graphClient.deviceManagement().softwareUpdateStatusSummary()
	.buildRequest()
	.patch(softwareUpdateStatusSummary);

```