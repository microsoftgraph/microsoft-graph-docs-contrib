---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
OnPremisesPublishing onPremisesPublishing = new OnPremisesPublishing();
onPremisesPublishing.externalAuthenticationType = ExternalAuthenticationType.AAD_PRE_AUTHENTICATION;
onPremisesPublishing.internalUrl = "https://contosoiwaapp.com";
onPremisesPublishing.externalUrl = "https://contosoiwaapp-contoso.msappproxy.net";
onPremisesPublishing.isHttpOnlyCookieEnabled = true;
onPremisesPublishing.isOnPremPublishingEnabled = true;
onPremisesPublishing.isPersistentCookieEnabled = true;
onPremisesPublishing.isSecureCookieEnabled = true;
onPremisesPublishing.isStateSessionEnabled = true;
onPremisesPublishing.isTranslateHostHeaderEnabled = true;
onPremisesPublishing.isTranslateLinksInBodyEnabled = true;
application.onPremisesPublishing = onPremisesPublishing;

graphClient.applications("bf21f7e9-9d25-4da2-82ab-7fdd85049f83")
	.buildRequest()
	.patch(application);

```