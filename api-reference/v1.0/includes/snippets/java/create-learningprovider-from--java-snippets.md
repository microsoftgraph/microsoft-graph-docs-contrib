---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningProvider learningProvider = new LearningProvider();
learningProvider.displayName = "Microsoft";
learningProvider.squareLogoWebUrlForDarkTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png";
learningProvider.longLogoWebUrlForDarkTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png";
learningProvider.squareLogoWebUrlForLightTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png";
learningProvider.longLogoWebUrlForLightTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png";
learningProvider.loginWebUrl = "https://www.linkedin.com/learning-login/teams";

graphClient.employeeExperience().learningProviders()
	.buildRequest()
	.post(learningProvider);

```