---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
application.setSignInAudience("AzureADMyOrg");
UnrestrictedAudience signInAudienceRestrictions = new UnrestrictedAudience();
signInAudienceRestrictions.setOdataType("#microsoft.graph.unrestrictedAudience");
application.setSignInAudienceRestrictions(signInAudienceRestrictions);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```