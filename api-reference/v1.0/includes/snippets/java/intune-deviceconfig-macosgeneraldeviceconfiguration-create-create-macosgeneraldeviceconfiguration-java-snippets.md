---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MacOSGeneralDeviceConfiguration deviceConfiguration = new MacOSGeneralDeviceConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.macOSGeneralDeviceConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
LinkedList<AppListItem> compliantAppsList = new LinkedList<AppListItem>();
AppListItem appListItem = new AppListItem();
appListItem.setOdataType("microsoft.graph.appListItem");
appListItem.setName("Name value");
appListItem.setPublisher("Publisher value");
appListItem.setAppStoreUrl("https://example.com/appStoreUrl/");
appListItem.setAppId("App Id value");
compliantAppsList.add(appListItem);
deviceConfiguration.setCompliantAppsList(compliantAppsList);
deviceConfiguration.setCompliantAppListType(AppListType.AppsInListCompliant);
LinkedList<String> emailInDomainSuffixes = new LinkedList<String>();
emailInDomainSuffixes.add("Email In Domain Suffixes value");
deviceConfiguration.setEmailInDomainSuffixes(emailInDomainSuffixes);
deviceConfiguration.setPasswordBlockSimple(true);
deviceConfiguration.setPasswordExpirationDays(6);
deviceConfiguration.setPasswordMinimumCharacterSetCount(0);
deviceConfiguration.setPasswordMinimumLength(5);
deviceConfiguration.setPasswordMinutesOfInactivityBeforeLock(5);
deviceConfiguration.setPasswordMinutesOfInactivityBeforeScreenTimeout(14);
deviceConfiguration.setPasswordPreviousPasswordBlockCount(2);
deviceConfiguration.setPasswordRequiredType(RequiredPasswordType.Alphanumeric);
deviceConfiguration.setPasswordRequired(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```