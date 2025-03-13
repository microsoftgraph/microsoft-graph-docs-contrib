---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplicationTemplateCollectionResponse result = graphClient.applicationTemplates().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'";
});


```