---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Site site = new Site();
site.setName("Communication Site Test");
site.setWebUrl("https://contoso.sharepoint.com/sites/commsite1");
site.setLocale("en-US");
site.setShareByEmailEnabled(false);
site.setDescription("Test Site Description");
site.setTemplate(SiteTemplateType.Sitepagepublishing);
IdentityInput ownerIdentityToResolve = new IdentityInput();
ownerIdentityToResolve.setEmail("ryan@contoso.com");
site.setOwnerIdentityToResolve(ownerIdentityToResolve);
Site result = graphClient.sites().post(site);


```