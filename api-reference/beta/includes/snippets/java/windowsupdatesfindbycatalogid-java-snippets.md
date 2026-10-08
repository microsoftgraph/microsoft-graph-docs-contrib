---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.admin().windows().updates().products().microsoftGraphWindowsUpdatesFindByKbNumberWithKbNumber(1).get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"revisions($expand=catalogEntry,knowledgeBaseArticle)", "knownIssues"};
});


```