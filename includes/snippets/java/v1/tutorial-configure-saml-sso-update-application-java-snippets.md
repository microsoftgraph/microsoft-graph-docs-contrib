---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
WebApplication web = new WebApplication();
LinkedList<String> redirectUrisList = new LinkedList<String>();
redirectUrisList.add("https://signin.aws.amazon.com/saml");
web.redirectUris = redirectUrisList;
application.web = web;
LinkedList<String> identifierUrisList = new LinkedList<String>();
identifierUrisList.add("https://signin.aws.amazon.com/saml");
application.identifierUris = identifierUrisList;

graphClient.applications("a9be408a-6c31-4141-8cea-52fcd4a61be8")
	.buildRequest()
	.patch(application);

```