---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MacOSLobApp
{
	OdataType = "#microsoft.graph.macOSLobApp",
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
	MinimumSupportedOperatingSystem = new MacOSMinimumOperatingSystem
	{
		OdataType = "microsoft.graph.macOSMinimumOperatingSystem",
		V107 = true,
		V108 = true,
		V109 = true,
		V1010 = true,
		V1011 = true,
		V1012 = true,
		V1013 = true,
		V1014 = true,
		V1015 = true,
		V110 = true,
		V120 = true,
		V130 = true,
	},
	BuildNumber = "Build Number value",
	VersionNumber = "Version Number value",
	ChildApps = new List<MacOSLobChildApp>
	{
		new MacOSLobChildApp
		{
			OdataType = "microsoft.graph.macOSLobChildApp",
			BundleId = "Bundle Id value",
			BuildNumber = "Build Number value",
			VersionNumber = "Version Number value",
		},
	},
	Md5HashChunkSize = 0,
	Md5Hash = new List<string>
	{
		"Md5Hash value",
	},
	IgnoreVersionDetection = true,
	InstallAsManaged = true,
};
var result = await graphClient.DeviceAppManagement.MobileApps.PostAsync(requestBody);


```