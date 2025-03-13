---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LanguageProficiency languageProficiency = new LanguageProficiency();
languageProficiency.setDisplayName("Norwegian Bokmål");
languageProficiency.setTag("nb-NO");
languageProficiency.setSpoken(LanguageProficiencyLevel.NativeOrBilingual);
languageProficiency.setWritten(LanguageProficiencyLevel.NativeOrBilingual);
languageProficiency.setReading(LanguageProficiencyLevel.NativeOrBilingual);
LanguageProficiency result = graphClient.me().profile().languages().post(languageProficiency);


```