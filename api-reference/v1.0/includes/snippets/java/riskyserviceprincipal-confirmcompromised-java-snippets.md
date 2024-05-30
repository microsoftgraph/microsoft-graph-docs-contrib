---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identityprotection.riskyserviceprincipals.confirmcompromised.ConfirmCompromisedPostRequestBody confirmCompromisedPostRequestBody = new com.microsoft.graph.identityprotection.riskyserviceprincipals.confirmcompromised.ConfirmCompromisedPostRequestBody();
LinkedList<String> servicePrincipalIds = new LinkedList<String>();
servicePrincipalIds.add("9089a539-a539-9089-39a5-899039a58990");
confirmCompromisedPostRequestBody.setServicePrincipalIds(servicePrincipalIds);
graphClient.identityProtection().riskyServicePrincipals().confirmCompromised().post(confirmCompromisedPostRequestBody);


```