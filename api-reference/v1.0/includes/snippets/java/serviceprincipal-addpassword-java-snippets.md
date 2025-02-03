---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.addpassword.AddPasswordPostRequestBody addPasswordPostRequestBody = new com.microsoft.graph.serviceprincipals.item.addpassword.AddPasswordPostRequestBody();
PasswordCredential passwordCredential = new PasswordCredential();
passwordCredential.setDisplayName("Password friendly name");
addPasswordPostRequestBody.setPasswordCredential(passwordCredential);
PasswordCredential result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").addPassword().post(addPasswordPostRequestBody);


```