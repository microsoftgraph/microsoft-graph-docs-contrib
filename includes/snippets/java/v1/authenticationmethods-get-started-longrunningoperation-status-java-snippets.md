---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("aadgdc", "AM4P"));
requestOptions.add(new QueryOption("aadgsu", "ssprprod-a"));

LongRunningOperation longRunningOperation = graphClient.users("a87cc624-b550-4559-b934-3bc0325a4808").authentication().operations("ba0c9a11-5163-4353-89ba-81501617ede0")
	.buildRequest( requestOptions )
	.get();

```