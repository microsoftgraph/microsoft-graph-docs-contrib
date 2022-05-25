---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("token", "latest"));

ListItemDeltaCollectionPage delta = graphClient.sites("contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE").lists("22e03ef3-6ef4-424d-a1d3-92a337807c30").items()
	.delta()
	.buildRequest( requestOptions )
	.get();

```