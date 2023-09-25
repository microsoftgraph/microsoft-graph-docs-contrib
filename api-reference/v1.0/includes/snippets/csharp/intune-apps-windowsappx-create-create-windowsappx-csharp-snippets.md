---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsAppX
{
	OdataType = "#microsoft.graph.windowsAppX",
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
	ApplicableArchitectures = WindowsArchitecture.X86,
	IdentityName = "Identity Name value",
	IdentityPublisherHash = "Identity Publisher Hash value",
	IdentityResourceIdentifier = "Identity Resource Identifier value",
	IsBundle = true,
	MinimumSupportedOperatingSystem = new WindowsMinimumOperatingSystem
	{
		OdataType = "microsoft.graph.windowsMinimumOperatingSystem",
		V80 = true,
		V81 = true,
		V100 = true,
	},
	IdentityVersion = "Identity Version value",
};
var result = await graphClient.DeviceAppManagement.MobileApps.PostAsync(requestBody);


```