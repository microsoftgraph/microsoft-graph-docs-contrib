---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

GroupCollectionPage groups = graphClient.groups()
	.buildRequest( requestOptions )
	.filter("hasMembersWithLicenseErrors eq true")
	.select("id,displayName")
	.get();

```