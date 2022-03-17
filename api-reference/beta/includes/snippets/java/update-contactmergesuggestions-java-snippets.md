---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContactMergeSuggestions contactMergeSuggestions = new ContactMergeSuggestions();
contactMergeSuggestions.isEnabled = false;

graphClient.me().settings().contactMergeSuggestions()
	.buildRequest()
	.patch(contactMergeSuggestions);

```