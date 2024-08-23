---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LearningProvider learningProvider = new LearningProvider();
learningProvider.setDisplayName("Microsoft");
learningProvider.setSquareLogoWebUrlForDarkTheme("https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png");
learningProvider.setLongLogoWebUrlForDarkTheme("https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png");
learningProvider.setSquareLogoWebUrlForLightTheme("https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png");
learningProvider.setLongLogoWebUrlForLightTheme("https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png");
learningProvider.setLoginWebUrl("https://www.linkedin.com/learning-login/teams");
learningProvider.setIsCourseActivitySyncEnabled(true);
LearningProvider result = graphClient.employeeExperience().learningProviders().byLearningProviderId("{learningProvider-id}").patch(learningProvider);


```