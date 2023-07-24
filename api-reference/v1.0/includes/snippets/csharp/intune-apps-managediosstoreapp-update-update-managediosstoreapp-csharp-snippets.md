---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedIOSStoreApp
{
	OdataType = "#microsoft.graph.managedIOSStoreApp",
	DisplayName = "Display Name value",
	Description = "Description value",
	Publisher = "Publisher value",
	LargeIcon = new MimeContent
	{
		OdataType = "microsoft.graph.mimeContent",
		Type = "Type value",
		Value = Convert.FromBase64String("dmFsdWU="),
	},
	IsFeatured = true,
	PrivacyInformationUrl = "https://example.com/privacyInformationUrl/",
	InformationUrl = "https://example.com/informationUrl/",
	Owner = "Owner value",
	Developer = "Developer value",
	Notes = "Notes value",
	PublishingState = MobileAppPublishingState.Processing,
	AppAvailability = ManagedAppAvailability.LineOfBusiness,
	Version = "Version value",
	BundleId = "Bundle Id value",
	AppStoreUrl = "https://example.com/appStoreUrl/",
	ApplicableDeviceType = new IosDeviceType
	{
		OdataType = "microsoft.graph.iosDeviceType",
		IPad = true,
		IPhoneAndIPod = true,
	},
	MinimumSupportedOperatingSystem = new IosMinimumOperatingSystem
	{
		OdataType = "microsoft.graph.iosMinimumOperatingSystem",
		V8_0 = true,
		V9_0 = true,
		V10_0 = true,
		V11_0 = true,
		V12_0 = true,
		V13_0 = true,
		V14_0 = true,
		V15_0 = true,
	},
};
var result = await graphClient.DeviceAppManagement.MobileApps["{mobileApp-id}"].PatchAsync(requestBody);


```