---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Accept-Language", "0"));

OrganizationalBranding organizationalBranding = graphClient.organization("dcd219dd-bc68-4b9b-bf0b-4a33a796be35").branding()
	.buildRequest( requestOptions )
	.get();

```