---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceManagement
{
	OdataType = "#microsoft.graph.deviceManagement",
	IntuneBrand = new IntuneBrand
	{
		OdataType = "microsoft.graph.intuneBrand",
		DisplayName = "Display Name value",
		ThemeColor = new RgbColor
		{
			OdataType = "microsoft.graph.rgbColor",
			R = 1,
			G = 1,
			B = 1,
		},
		ShowLogo = true,
		LightBackgroundLogo = new MimeContent
		{
			OdataType = "microsoft.graph.mimeContent",
			Type = "Type value",
			Value = Convert.FromBase64String("dmFsdWU="),
		},
		DarkBackgroundLogo = new MimeContent
		{
			OdataType = "microsoft.graph.mimeContent",
			Type = "Type value",
			Value = Convert.FromBase64String("dmFsdWU="),
		},
		ShowNameNextToLogo = true,
		ShowDisplayNameNextToLogo = true,
		ContactITName = "Contact ITName value",
		ContactITPhoneNumber = "Contact ITPhone Number value",
		ContactITEmailAddress = "Contact ITEmail Address value",
		ContactITNotes = "Contact ITNotes value",
		OnlineSupportSiteUrl = "https://example.com/onlineSupportSiteUrl/",
		OnlineSupportSiteName = "Online Support Site Name value",
		PrivacyUrl = "https://example.com/privacyUrl/",
	},
};
var result = await graphClient.DeviceManagement.PatchAsync(requestBody);


```