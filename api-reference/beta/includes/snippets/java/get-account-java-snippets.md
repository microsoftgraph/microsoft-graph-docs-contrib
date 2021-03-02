---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUserAccountInformationCollectionPage account = graphClient.me().profile().account()
	.buildRequest()
	.get();

```