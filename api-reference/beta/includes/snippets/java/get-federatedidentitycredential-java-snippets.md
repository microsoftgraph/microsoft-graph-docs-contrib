---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FederatedIdentityCredential federatedIdentityCredential = graphClient.applications("acd7c908-1c4d-4d48-93ee-ff38349a75c8").federatedIdentityCredentials("bdad0963-4a7a-43ae-b569-e67e1da3f2c0")
	.buildRequest()
	.get();

```