---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MicrosoftStoreForBusinessApp
{
	OdataType = "#microsoft.graph.microsoftStoreForBusinessApp",
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
	UsedLicenseCount = 0,
	TotalLicenseCount = 1,
	ProductKey = "Product Key value",
	LicenseType = MicrosoftStoreForBusinessLicenseType.Online,
	PackageIdentityName = "Package Identity Name value",
};
var result = await graphClient.DeviceAppManagement.MobileApps.PostAsync(requestBody);


```