---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TrainingLanguageDetail result = graphClient.security().attackSimulation().trainings().byTrainingId("{training-id}").languageDetails().byTrainingLanguageDetailId("{trainingLanguageDetail-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "locale eq 'en'";
});


```