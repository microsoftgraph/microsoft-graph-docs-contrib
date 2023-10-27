---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsAutopilotDeviceIdentity windowsAutopilotDeviceIdentity = new WindowsAutopilotDeviceIdentity();
windowsAutopilotDeviceIdentity.groupTag = "Group Tag value";
windowsAutopilotDeviceIdentity.purchaseOrderIdentifier = "Purchase Order Identifier value";
windowsAutopilotDeviceIdentity.serialNumber = "Serial Number value";
windowsAutopilotDeviceIdentity.productKey = "Product Key value";
windowsAutopilotDeviceIdentity.manufacturer = "Manufacturer value";
windowsAutopilotDeviceIdentity.model = "Model value";
windowsAutopilotDeviceIdentity.enrollmentState = EnrollmentState.ENROLLED;
windowsAutopilotDeviceIdentity.lastContactedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:44.2908994+00:00");
windowsAutopilotDeviceIdentity.addressableUserName = "Addressable User Name value";
windowsAutopilotDeviceIdentity.userPrincipalName = "User Principal Name value";
windowsAutopilotDeviceIdentity.resourceName = "Resource Name value";
windowsAutopilotDeviceIdentity.skuNumber = "Sku Number value";
windowsAutopilotDeviceIdentity.systemFamily = "System Family value";
windowsAutopilotDeviceIdentity.azureActiveDirectoryDeviceId = "Azure Active Directory Device Id value";
windowsAutopilotDeviceIdentity.managedDeviceId = "Managed Device Id value";
windowsAutopilotDeviceIdentity.displayName = "Display Name value";

graphClient.deviceManagement().windowsAutopilotDeviceIdentities()
	.buildRequest()
	.post(windowsAutopilotDeviceIdentity);

```