---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
LinkedList<String> tagsList = new LinkedList<String>();
tagsList.add("HR");
tagsList.add("Payroll");
tagsList.add("HideApp");
application.tags = tagsList;
InformationalUrl info = new InformationalUrl();
info.logoUrl = "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png";
info.marketingUrl = "https://www.contoso.com/app/marketing";
info.privacyStatementUrl = "https://www.contoso.com/app/privacy";
info.supportUrl = "https://www.contoso.com/app/support";
info.termsOfServiceUrl = "https://www.contoso.com/app/termsofservice";
application.info = info;
WebApplication web = new WebApplication();
web.homePageUrl = "https://www.contoso.com/";
web.logoutUrl = "https://www.contoso.com/frontchannel_logout";
LinkedList<String> redirectUrisList = new LinkedList<String>();
redirectUrisList.add("https://localhost");
web.redirectUris = redirectUrisList;
application.web = web;
application.serviceManagementReference = "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;";

graphClient.applications("0d0021e2-eaab-4b9f-a5ad-38c55337d63e")
	.buildRequest()
	.patch(application);

```