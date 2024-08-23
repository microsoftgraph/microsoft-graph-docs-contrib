---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
LinkedList<String> identifierUris = new LinkedList<String>();
identifierUris.add("api://32977d3b-ee0e-4614-9f50-f583a07842d2");
application.setIdentifierUris(identifierUris);
WebApplication web = new WebApplication();
LinkedList<String> redirectUris = new LinkedList<String>();
redirectUris.add("https://contosoiwaapp-contoso.msappproxy.net");
web.setRedirectUris(redirectUris);
web.setHomePageUrl("https://contosoiwaapp-contoso.msappproxy.net");
application.setWeb(web);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```