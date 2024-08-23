---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RegionalAndLanguageSettings regionalAndLanguageSettings = new RegionalAndLanguageSettings();
LinkedList<LocaleInfo> authoringLanguages = new LinkedList<LocaleInfo>();
LocaleInfo localeInfo = new LocaleInfo();
localeInfo.setLocale("en-US");
authoringLanguages.add(localeInfo);
LocaleInfo localeInfo1 = new LocaleInfo();
localeInfo1.setLocale("es-MX");
authoringLanguages.add(localeInfo1);
regionalAndLanguageSettings.setAuthoringLanguages(authoringLanguages);
LocaleInfo defaultRegionalFormat = new LocaleInfo();
defaultRegionalFormat.setLocale("en-US");
regionalAndLanguageSettings.setDefaultRegionalFormat(defaultRegionalFormat);
RegionalAndLanguageSettings result = graphClient.me().settings().regionalAndLanguageSettings().patch(regionalAndLanguageSettings);


```