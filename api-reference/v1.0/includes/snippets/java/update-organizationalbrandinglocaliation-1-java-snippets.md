---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OrganizationalBranding organizationalBranding = new OrganizationalBranding();
organizationalBranding.setSignInPageText("Default");
organizationalBranding.setUsernameHintText("DefaultHint");
OrganizationalBranding result = graphClient.organization().byOrganizationId("{organization-id}").branding().patch(organizationalBranding, requestConfiguration -> {
	requestConfiguration.headers.add("Accept-Language", "0");
});


```