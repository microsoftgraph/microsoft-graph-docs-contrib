---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

NamePronunciationSettings namePronunciationSettings = new NamePronunciationSettings();
namePronunciationSettings.setOdataType("#microsoft.graph.namePronunciationSettings");
namePronunciationSettings.setIsEnabledInOrganization(true);
NamePronunciationSettings result = graphClient.admin().people().namePronunciation().patch(namePronunciationSettings);


```