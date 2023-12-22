---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MacOSGeneralDeviceConfiguration deviceConfiguration = new MacOSGeneralDeviceConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
LinkedList<AppListItem> compliantAppsListList = new LinkedList<AppListItem>();
AppListItem compliantAppsList = new AppListItem();
compliantAppsList.name = "Name value";
compliantAppsList.publisher = "Publisher value";
compliantAppsList.appStoreUrl = "https://example.com/appStoreUrl/";
compliantAppsList.appId = "App Id value";
compliantAppsListList.add(compliantAppsList);
deviceConfiguration.compliantAppsList = compliantAppsListList;
deviceConfiguration.compliantAppListType = AppListType.APPS_IN_LIST_COMPLIANT;
LinkedList<String> emailInDomainSuffixesList = new LinkedList<String>();
emailInDomainSuffixesList.add("Email In Domain Suffixes value");
deviceConfiguration.emailInDomainSuffixes = emailInDomainSuffixesList;
deviceConfiguration.passwordBlockSimple = true;
deviceConfiguration.passwordExpirationDays = 6;
deviceConfiguration.passwordMinimumCharacterSetCount = 0;
deviceConfiguration.passwordMinimumLength = 5;
deviceConfiguration.passwordMinutesOfInactivityBeforeLock = 5;
deviceConfiguration.passwordMinutesOfInactivityBeforeScreenTimeout = 14;
deviceConfiguration.passwordPreviousPasswordBlockCount = 2;
deviceConfiguration.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceConfiguration.passwordRequired = true;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```