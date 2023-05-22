---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
LinkedList<String> identifierUrisList = new LinkedList<String>();
identifierUrisList.add("https://contosoiwaapp-contoso.msappproxy.net");
application.identifierUris = identifierUrisList;
WebApplication web = new WebApplication();
LinkedList<String> redirectUrisList = new LinkedList<String>();
redirectUrisList.add("https://contosoiwaapp-contoso.msappproxy.net");
web.redirectUris = redirectUrisList;
web.homePageUrl = "https://contosoiwaapp-contoso.msappproxy.net";
application.web = web;

graphClient.applications("bf21f7e9-9d25-4da2-82ab-7fdd85049f83")
	.buildRequest()
	.patch(application);

```