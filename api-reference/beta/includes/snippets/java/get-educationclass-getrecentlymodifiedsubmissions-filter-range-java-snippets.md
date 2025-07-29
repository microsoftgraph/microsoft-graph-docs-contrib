---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.education().classes().byEducationClassId("{educationClass-id}").getRecentlyModifiedSubmissions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "lastModifiedDateTime gt 2024-08-25T20:45:51.3485047Z and lastModifiedDateTime lt 2024-08-28T20:45:51.3485047Z";
});


```