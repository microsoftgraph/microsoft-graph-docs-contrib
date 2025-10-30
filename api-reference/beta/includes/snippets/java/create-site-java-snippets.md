---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Site site = new Site();
site.setName("Communication Site Test");
site.setWebUrl("https://contoso.sharepoint.com/sites/commsite1");
site.setDescription("Test Site Description");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("locale", "en-US");
additionalData.put("shareByEmailEnabled", false);
additionalData.put("template", "sitepagepublishing");
 ownerIdentityToResolve = new ();
ownerIdentityToResolve.setEmail("ryan@contoso.com");
additionalData.put("ownerIdentityToResolve", ownerIdentityToResolve);
site.setAdditionalData(additionalData);
Site result = graphClient.sites().post(site);


```