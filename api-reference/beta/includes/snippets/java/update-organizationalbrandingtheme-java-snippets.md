---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OrganizationalBrandingTheme organizationalBrandingTheme = new OrganizationalBrandingTheme();
organizationalBrandingTheme.setOdataType("#microsoft.graph.organizationalBrandingTheme");
organizationalBrandingTheme.setName("ContosoTheme");
organizationalBrandingTheme.setIsDefaultTheme(true);
OrganizationalBrandingTheme result = graphClient.organization().byOrganizationId("{organization-id}").branding().themes().byOrganizationalBrandingThemeId("{organizationalBrandingTheme-id}").patch(organizationalBrandingTheme);


```