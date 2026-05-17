---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
application.setDisplayName("MyAppName");
application.setSignInAudience("AzureADMultipleOrgs");
AllowedTenantsAudience signInAudienceRestrictions = new AllowedTenantsAudience();
signInAudienceRestrictions.setOdataType("#microsoft.graph.allowedTenantsAudience");
signInAudienceRestrictions.setIsHomeTenantAllowed(true);
LinkedList<String> allowedTenantIds = new LinkedList<String>();
allowedTenantIds.add("818ce016-78c2-457c-91d7-c02c2faaa5fe");
allowedTenantIds.add("c62670b0-53a1-4a38-b26c-4093cbaa510a");
signInAudienceRestrictions.setAllowedTenantIds(allowedTenantIds);
application.setSignInAudienceRestrictions(signInAudienceRestrictions);
Application result = graphClient.applications().post(application);


```