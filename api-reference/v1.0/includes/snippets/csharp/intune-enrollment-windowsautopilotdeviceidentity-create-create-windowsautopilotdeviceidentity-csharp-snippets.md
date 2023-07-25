---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsAutopilotDeviceIdentity
{
	OdataType = "#microsoft.graph.windowsAutopilotDeviceIdentity",
	GroupTag = "Group Tag value",
	PurchaseOrderIdentifier = "Purchase Order Identifier value",
	SerialNumber = "Serial Number value",
	ProductKey = "Product Key value",
	Manufacturer = "Manufacturer value",
	Model = "Model value",
	EnrollmentState = EnrollmentState.Enrolled,
	LastContactedDateTime = DateTimeOffset.Parse("2016-12-31T23:58:44.2908994-08:00"),
	AddressableUserName = "Addressable User Name value",
	UserPrincipalName = "User Principal Name value",
	ResourceName = "Resource Name value",
	SkuNumber = "Sku Number value",
	SystemFamily = "System Family value",
	AzureActiveDirectoryDeviceId = "Azure Active Directory Device Id value",
	ManagedDeviceId = "Managed Device Id value",
	DisplayName = "Display Name value",
};
var result = await graphClient.DeviceManagement.WindowsAutopilotDeviceIdentities.PostAsync(requestBody);


```