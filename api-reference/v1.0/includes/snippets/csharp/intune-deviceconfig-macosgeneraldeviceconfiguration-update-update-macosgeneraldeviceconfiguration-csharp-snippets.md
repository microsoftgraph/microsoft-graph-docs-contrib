---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MacOSGeneralDeviceConfiguration
{
	OdataType = "#microsoft.graph.macOSGeneralDeviceConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	CompliantAppsList = new List<AppListItem>
	{
		new AppListItem
		{
			OdataType = "microsoft.graph.appListItem",
			Name = "Name value",
			Publisher = "Publisher value",
			AppStoreUrl = "https://example.com/appStoreUrl/",
			AppId = "App Id value",
		},
	},
	CompliantAppListType = AppListType.AppsInListCompliant,
	EmailInDomainSuffixes = new List<string>
	{
		"Email In Domain Suffixes value",
	},
	PasswordBlockSimple = true,
	PasswordExpirationDays = 6,
	PasswordMinimumCharacterSetCount = 0,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordMinutesOfInactivityBeforeScreenTimeout = 14,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordRequired = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```