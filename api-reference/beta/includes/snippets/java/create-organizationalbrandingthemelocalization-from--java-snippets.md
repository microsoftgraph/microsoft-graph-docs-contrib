---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OrganizationalBrandingThemeLocalization organizationalBrandingThemeLocalization = new OrganizationalBrandingThemeLocalization();
organizationalBrandingThemeLocalization.setOdataType("#microsoft.graph.organizationalBrandingThemeLocalization");
organizationalBrandingThemeLocalization.setLocale("fr-FR");
organizationalBrandingThemeLocalization.setHeaderBackgroundColor("#3377ffff");
organizationalBrandingThemeLocalization.setPageBackgroundColor("#FFFF33");
organizationalBrandingThemeLocalization.setSignInPageText("Welcome to Contoso");
organizationalBrandingThemeLocalization.setUsernameHintText("ContosoUsername ");
OrganizationalBrandingThemeLocalization result = graphClient.organization().byOrganizationId("{organization-id}").branding().themes().byOrganizationalBrandingThemeId("{organizationalBrandingTheme-id}").localizations().post(organizationalBrandingThemeLocalization);


```