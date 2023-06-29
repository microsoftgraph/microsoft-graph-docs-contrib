---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosVppEBook
{
	OdataType = "#microsoft.graph.iosVppEBook",
	DisplayName = "Display Name value",
	Description = "Description value",
	Publisher = "Publisher value",
	PublishedDateTime = DateTimeOffset.Parse("2016-12-31T23:58:16.1180489-08:00"),
	LargeCover = new MimeContent
	{
		OdataType = "microsoft.graph.mimeContent",
		Type = "Type value",
		Value = Convert.FromBase64String("dmFsdWU="),
	},
	InformationUrl = "https://example.com/informationUrl/",
	PrivacyInformationUrl = "https://example.com/privacyInformationUrl/",
	VppTokenId = Guid.Parse("9148ac60-ac60-9148-60ac-489160ac4891"),
	AppleId = "Apple Id value",
	VppOrganizationName = "Vpp Organization Name value",
	Genres = new List<string>
	{
		"Genres value",
	},
	Language = "Language value",
	Seller = "Seller value",
	TotalLicenseCount = 1,
	UsedLicenseCount = 0,
};
var result = await graphClient.DeviceAppManagement.ManagedEBooks.PostAsync(requestBody);


```