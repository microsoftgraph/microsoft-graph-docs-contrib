---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContactMergeSuggestions contactMergeSuggestions = graphClient.me().settings().contactMergeSuggestions()
	.buildRequest()
	.get();

```