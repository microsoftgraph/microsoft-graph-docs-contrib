---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosStoreApp
{
	OdataType = "#microsoft.graph.iosStoreApp",
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
		V80 = true,
		V90 = true,
		V100 = true,
		V110 = true,
		V120 = true,
		V130 = true,
		V140 = true,
		V150 = true,
	},
};
var result = await graphClient.DeviceAppManagement.MobileApps["{mobileApp-id}"].PatchAsync(requestBody);


```