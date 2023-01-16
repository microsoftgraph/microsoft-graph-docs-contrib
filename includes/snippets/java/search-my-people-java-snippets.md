---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$search", "\"Irene McGowen\""));

PersonCollectionPage people = graphClient.me().people()
	.buildRequest( requestOptions )
	.get();

```