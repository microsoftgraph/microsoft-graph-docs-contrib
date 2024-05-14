---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
OnPremisesPublishing onPremisesPublishing = new OnPremisesPublishing();
onPremisesPublishing.setExternalAuthenticationType(ExternalAuthenticationType.AadPreAuthentication);
onPremisesPublishing.setInternalUrl("https://contosoiwaapp.com");
onPremisesPublishing.setExternalUrl("https://contosoiwaapp-contoso.msappproxy.net");
onPremisesPublishing.setIsHttpOnlyCookieEnabled(true);
onPremisesPublishing.setIsOnPremPublishingEnabled(true);
onPremisesPublishing.setIsPersistentCookieEnabled(true);
onPremisesPublishing.setIsSecureCookieEnabled(true);
onPremisesPublishing.setIsStateSessionEnabled(true);
onPremisesPublishing.setIsTranslateHostHeaderEnabled(true);
onPremisesPublishing.setIsTranslateLinksInBodyEnabled(true);
application.setOnPremisesPublishing(onPremisesPublishing);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```