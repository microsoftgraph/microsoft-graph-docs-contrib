---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.identities.identityaccounts.item.microsoftgraphsecurityinvokeaction.InvokeActionPostRequestBody invokeActionPostRequestBody = new com.microsoft.graph.beta.security.identities.identityaccounts.item.microsoftgraphsecurityinvokeaction.InvokeActionPostRequestBody();
invokeActionPostRequestBody.setAccountId("256db173-930a-4991-9061-0d51a9a93ba5");
invokeActionPostRequestBody.setAction(com.microsoft.graph.beta.models.security.Action.Disable);
invokeActionPostRequestBody.setIdentityProvider(com.microsoft.graph.beta.models.security.IdentityProvider.ActiveDirectory);
var result = graphClient.security().identities().identityAccounts().byIdentityAccountsId("{identityAccounts-id}").microsoftGraphSecurityInvokeAction().post(invokeActionPostRequestBody);


```