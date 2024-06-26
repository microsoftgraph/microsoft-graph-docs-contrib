---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsAutopilotDeviceIdentity windowsAutopilotDeviceIdentity = new WindowsAutopilotDeviceIdentity();
windowsAutopilotDeviceIdentity.setOdataType("#microsoft.graph.windowsAutopilotDeviceIdentity");
windowsAutopilotDeviceIdentity.setGroupTag("Group Tag value");
windowsAutopilotDeviceIdentity.setPurchaseOrderIdentifier("Purchase Order Identifier value");
windowsAutopilotDeviceIdentity.setSerialNumber("Serial Number value");
windowsAutopilotDeviceIdentity.setProductKey("Product Key value");
windowsAutopilotDeviceIdentity.setManufacturer("Manufacturer value");
windowsAutopilotDeviceIdentity.setModel("Model value");
windowsAutopilotDeviceIdentity.setEnrollmentState(EnrollmentState.Enrolled);
OffsetDateTime lastContactedDateTime = OffsetDateTime.parse("2016-12-31T23:58:44.2908994-08:00");
windowsAutopilotDeviceIdentity.setLastContactedDateTime(lastContactedDateTime);
windowsAutopilotDeviceIdentity.setAddressableUserName("Addressable User Name value");
windowsAutopilotDeviceIdentity.setUserPrincipalName("User Principal Name value");
windowsAutopilotDeviceIdentity.setResourceName("Resource Name value");
windowsAutopilotDeviceIdentity.setSkuNumber("Sku Number value");
windowsAutopilotDeviceIdentity.setSystemFamily("System Family value");
windowsAutopilotDeviceIdentity.setAzureActiveDirectoryDeviceId("Azure Active Directory Device Id value");
windowsAutopilotDeviceIdentity.setManagedDeviceId("Managed Device Id value");
windowsAutopilotDeviceIdentity.setDisplayName("Display Name value");
WindowsAutopilotDeviceIdentity result = graphClient.deviceManagement().windowsAutopilotDeviceIdentities().post(windowsAutopilotDeviceIdentity);


```