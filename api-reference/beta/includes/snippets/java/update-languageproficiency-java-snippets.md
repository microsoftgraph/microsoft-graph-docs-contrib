---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LanguageProficiency languageProficiency = new LanguageProficiency();
languageProficiency.setAllowedAudiences(EnumSet.of(AllowedAudiences.Organization));
LanguageProficiency result = graphClient.me().profile().languages().byLanguageProficiencyId("{languageProficiency-id}").patch(languageProficiency);


```