---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.serviceprincipals.item.deletepasswordsinglesignoncredentials.DeletePasswordSingleSignOnCredentialsPostRequestBody deletePasswordSingleSignOnCredentialsPostRequestBody = new com.microsoft.graph.beta.serviceprincipals.item.deletepasswordsinglesignoncredentials.DeletePasswordSingleSignOnCredentialsPostRequestBody();
deletePasswordSingleSignOnCredentialsPostRequestBody.setId("5793aa3b-cca9-4794-679a240f8b58");
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").deletePasswordSingleSignOnCredentials().post(deletePasswordSingleSignOnCredentialsPostRequestBody);


```