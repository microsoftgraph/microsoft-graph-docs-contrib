---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
LinkedList<String> tags = new LinkedList<String>();
tags.add("HR");
tags.add("Payroll");
tags.add("HideApp");
application.setTags(tags);
InformationalUrl info = new InformationalUrl();
info.setLogoUrl("https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png");
info.setMarketingUrl("https://www.contoso.com/app/marketing");
info.setPrivacyStatementUrl("https://www.contoso.com/app/privacy");
info.setSupportUrl("https://www.contoso.com/app/support");
info.setTermsOfServiceUrl("https://www.contoso.com/app/termsofservice");
application.setInfo(info);
WebApplication web = new WebApplication();
web.setHomePageUrl("https://www.contoso.com/");
web.setLogoutUrl("https://www.contoso.com/frontchannel_logout");
LinkedList<String> redirectUris = new LinkedList<String>();
redirectUris.add("https://localhost");
web.setRedirectUris(redirectUris);
application.setWeb(web);
application.setServiceManagementReference("Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;");
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```