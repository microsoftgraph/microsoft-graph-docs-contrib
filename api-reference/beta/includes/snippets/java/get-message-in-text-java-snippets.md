---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message result = graphClient.me().messages().byMessageId("{message-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"subject", "body", "bodyPreview", "uniqueBody"};
	requestConfiguration.headers.add("Prefer", "outlook.body-content-type=\"text\"");
});


```