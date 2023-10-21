---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AndroidStoreApp
{
	OdataType = "#microsoft.graph.androidStoreApp",
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
	PackageId = "Package Id value",
	AppStoreUrl = "https://example.com/appStoreUrl/",
	MinimumSupportedOperatingSystem = new AndroidMinimumOperatingSystem
	{
		OdataType = "microsoft.graph.androidMinimumOperatingSystem",
		V40 = true,
		V403 = true,
		V41 = true,
		V42 = true,
		V43 = true,
		V44 = true,
		V50 = true,
		V51 = true,
		V60 = true,
		V70 = true,
		V71 = true,
		V80 = true,
		V81 = true,
		V90 = true,
		V100 = true,
		V110 = true,
	},
};
var result = await graphClient.DeviceAppManagement.MobileApps.PostAsync(requestBody);


```