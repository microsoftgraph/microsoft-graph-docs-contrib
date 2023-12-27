---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemTypeAction azureAuthorizationSystemTypeAction = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().actions("TWljcm9zb2Z0LlN0b3JhZ2UvY2hlY2tuYW1lYXZhaWxhYmlsaXR5L3JlYWQ")
	.buildRequest()
	.get();

```