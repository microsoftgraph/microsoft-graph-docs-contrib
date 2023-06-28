---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosVppApp
{
	OdataType = "#microsoft.graph.iosVppApp",
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
	ReleaseDateTime = DateTimeOffset.Parse("2017-01-01T00:01:34.7470482-08:00"),
	AppStoreUrl = "https://example.com/appStoreUrl/",
	LicensingType = new VppLicensingType
	{
		OdataType = "microsoft.graph.vppLicensingType",
		SupportsUserLicensing = true,
		SupportsDeviceLicensing = true,
	},
	ApplicableDeviceType = new IosDeviceType
	{
		OdataType = "microsoft.graph.iosDeviceType",
		IPad = true,
		IPhoneAndIPod = true,
	},
	VppTokenOrganizationName = "Vpp Token Organization Name value",
	VppTokenAccountType = VppTokenAccountType.Education,
	VppTokenAppleId = "Vpp Token Apple Id value",
	BundleId = "Bundle Id value",
};
var result = await graphClient.DeviceAppManagement.MobileApps.PostAsync(requestBody);


```