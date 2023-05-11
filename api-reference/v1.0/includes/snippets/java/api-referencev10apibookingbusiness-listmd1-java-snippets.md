---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("query", "Adventure"));

BookingBusinessCollectionPage bookingBusinesses = graphClient.solutions().bookingBusinesses()
	.buildRequest( requestOptions )
	.get();

```