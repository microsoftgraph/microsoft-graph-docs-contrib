---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProfileSource profileSource = new ProfileSource();
profileSource.setSourceId("bamboohr1");
profileSource.setDisplayName("HR Platform");
profileSource.setKind("BambooHR");
profileSource.setWebUrl("https://bamboohr.contoso.com/login");
LinkedList<ProfileSourceLocalization> localizations = new LinkedList<ProfileSourceLocalization>();
ProfileSourceLocalization profileSourceLocalization = new ProfileSourceLocalization();
profileSourceLocalization.setDisplayName("HR-Plattform");
profileSourceLocalization.setWebUrl("http://bamboohr.contoso.com/de/login");
profileSourceLocalization.setLanguageTag("de");
localizations.add(profileSourceLocalization);
profileSource.setLocalizations(localizations);
ProfileSource result = graphClient.admin().people().profileSources().post(profileSource);


```