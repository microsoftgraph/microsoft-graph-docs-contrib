---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("ConsistencyLevel", "eventual"));

UserCollectionPage users = graphClient.users()
	.buildRequest( requestOptions )
	.filter("endsWith(mail,'@contoso.com')")
	.get();

```