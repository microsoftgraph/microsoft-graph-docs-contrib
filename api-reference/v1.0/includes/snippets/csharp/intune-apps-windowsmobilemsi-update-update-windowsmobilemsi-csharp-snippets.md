---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsMobileMSI
{
	OdataType = "#microsoft.graph.windowsMobileMSI",
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
	CommandLine = "Command Line value",
	ProductCode = "Product Code value",
	ProductVersion = "Product Version value",
	IgnoreVersionDetection = true,
};
var result = await graphClient.DeviceAppManagement.MobileApps["{mobileApp-id}"].PatchAsync(requestBody);


```