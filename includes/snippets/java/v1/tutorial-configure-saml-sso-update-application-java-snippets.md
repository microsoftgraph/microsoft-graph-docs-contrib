---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
LinkedList<String> identifierUris = new LinkedList<String>();
identifierUris.add("https://signin.aws.amazon.com/saml");
application.setIdentifierUris(identifierUris);
WebApplication web = new WebApplication();
LinkedList<String> redirectUris = new LinkedList<String>();
redirectUris.add("https://signin.aws.amazon.com/saml");
web.setRedirectUris(redirectUris);
application.setWeb(web);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```