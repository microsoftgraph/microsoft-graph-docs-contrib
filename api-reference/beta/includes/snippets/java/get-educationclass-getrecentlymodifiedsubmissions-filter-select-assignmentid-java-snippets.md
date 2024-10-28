---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.education().classes().byEducationClassId("{educationClass-id}").getRecentlyModifiedSubmissions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "assignmentId eq 'b20d6737-f88e-4892-8174-73aa26d18784'";
	requestConfiguration.queryParameters.select = new String []{"LastModifiedDateTime", "status"};
});


```