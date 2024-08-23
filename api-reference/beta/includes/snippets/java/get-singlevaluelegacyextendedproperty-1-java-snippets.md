---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message result = graphClient.me().messages().byMessageId("{message-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"singleValueExtendedProperties($filter=id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')"};
});


```