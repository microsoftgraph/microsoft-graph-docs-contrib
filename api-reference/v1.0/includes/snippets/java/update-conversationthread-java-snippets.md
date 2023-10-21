---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationThread conversationThread = new ConversationThread();
conversationThread.isLocked = true;

graphClient.groups("0fbf2921-5d17-4c2b-bae4-cc581de72c13").threads("AAQkAGU3OGZjZTE2LTFlOWItNGExYi1hMGMzLTMwZWU4OGUzYjU5MQMkABAALmW2hn6Ui0_7hOBeAIFdWhAALmW2hn6Ui0_7hOBeAIFdWg==")
	.buildRequest()
	.patch(conversationThread);

```