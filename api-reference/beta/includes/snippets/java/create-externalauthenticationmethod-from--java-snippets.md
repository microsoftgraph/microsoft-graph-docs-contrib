---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalAuthenticationMethod externalAuthenticationMethod = new ExternalAuthenticationMethod();
externalAuthenticationMethod.setOdataType("#microsoft.graph.externalAuthenticationMethod");
externalAuthenticationMethod.setConfigurationId("26310fee-860b-4eab-8749-ab730dcf335e");
externalAuthenticationMethod.setDisplayName("Adatum");
ExternalAuthenticationMethod result = graphClient.users().byUserId("{user-id}").authentication().externalAuthenticationMethods().post(externalAuthenticationMethod);


```