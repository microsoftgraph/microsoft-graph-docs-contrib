---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedAndroidStoreApp
{
	OdataType = "#microsoft.graph.managedAndroidStoreApp",
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
	PackageId = "Package Id value",
	AppStoreUrl = "https://example.com/appStoreUrl/",
	MinimumSupportedOperatingSystem = new AndroidMinimumOperatingSystem
	{
		OdataType = "microsoft.graph.androidMinimumOperatingSystem",
		V4_0 = true,
		V4_0_3 = true,
		V4_1 = true,
		V4_2 = true,
		V4_3 = true,
		V4_4 = true,
		V5_0 = true,
		V5_1 = true,
		V6_0 = true,
		V7_0 = true,
		V7_1 = true,
		V8_0 = true,
		V8_1 = true,
		V9_0 = true,
		V10_0 = true,
		V11_0 = true,
	},
};
var result = await graphClient.DeviceAppManagement.MobileApps["{mobileApp-id}"].PatchAsync(requestBody);


```