---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Accept-Language", "0"));

OrganizationalBranding organizationalBranding = graphClient.organization("84841066-274d-4ec0-a5c1-276be684bdd3").branding()
	.buildRequest( requestOptions )
	.get();

```