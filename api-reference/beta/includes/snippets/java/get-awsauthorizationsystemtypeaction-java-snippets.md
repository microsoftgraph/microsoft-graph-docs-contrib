---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsAuthorizationSystemTypeAction awsAuthorizationSystemTypeAction = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().actions("ZWMyOkFjY2VwdFJlc2VydmVkSW5zdGFuY2VzRXhjaGFuZ2VRdW90ZQ")
	.buildRequest()
	.get();

```