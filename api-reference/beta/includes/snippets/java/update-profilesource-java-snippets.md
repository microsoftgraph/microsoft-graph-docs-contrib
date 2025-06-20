---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProfileSource profileSource = new ProfileSource();
profileSource.setOdataType("#microsoft.graph.profileSource");
profileSource.setSourceId("bamboohr1");
profileSource.setKind("BambooHR");
profileSource.setDisplayName("BambooHR Updated");
profileSource.setWebUrl("https://bamboohr.contoso.com/login");
LinkedList<ProfileSourceLocalization> localizations = new LinkedList<ProfileSourceLocalization>();
ProfileSourceLocalization profileSourceLocalization = new ProfileSourceLocalization();
profileSourceLocalization.setDisplayName("HR-Platform");
profileSourceLocalization.setWebUrl("http://bamboohr.contoso.com/en-us/login");
profileSourceLocalization.setLanguageTag("en-us");
localizations.add(profileSourceLocalization);
ProfileSourceLocalization profileSourceLocalization1 = new ProfileSourceLocalization();
profileSourceLocalization1.setDisplayName("HR-Plattform");
profileSourceLocalization1.setWebUrl("http://bamboohr.contoso.com/de/login");
profileSourceLocalization1.setLanguageTag("de");
localizations.add(profileSourceLocalization1);
profileSource.setLocalizations(localizations);
ProfileSource result = graphClient.admin().people().profileSourcesWithSourceId("{sourceId}").patch(profileSource);


```