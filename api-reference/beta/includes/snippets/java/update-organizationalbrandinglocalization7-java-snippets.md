---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OrganizationalBrandingLocalization organizationalBrandingLocalization = new OrganizationalBrandingLocalization();
organizationalBrandingLocalization.setSignInPageText("Welcome to Contoso France.");
organizationalBrandingLocalization.setUsernameHintText(" ");
OrganizationalBrandingLocalization result = graphClient.organization().byOrganizationId("{organization-id}").branding().localizations().byOrganizationalBrandingLocalizationId("{organizationalBrandingLocalization-id}").patch(organizationalBrandingLocalization);


```