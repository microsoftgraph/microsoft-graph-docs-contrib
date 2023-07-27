---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosLobApp
{
	OdataType = "#microsoft.graph.iosLobApp",
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
	CommittedContentVersion = "Committed Content Version value",
	FileName = "File Name value",
	Size = 4L,
	BundleId = "Bundle Id value",
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
	ExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:57:57.2481234-08:00"),
	VersionNumber = "Version Number value",
	BuildNumber = "Build Number value",
};
var result = await graphClient.DeviceAppManagement.MobileApps["{mobileApp-id}"].PatchAsync(requestBody);


```