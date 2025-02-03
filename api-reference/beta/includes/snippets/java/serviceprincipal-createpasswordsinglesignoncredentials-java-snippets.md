---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.serviceprincipals.item.createpasswordsinglesignoncredentials.CreatePasswordSingleSignOnCredentialsPostRequestBody createPasswordSingleSignOnCredentialsPostRequestBody = new com.microsoft.graph.beta.serviceprincipals.item.createpasswordsinglesignoncredentials.CreatePasswordSingleSignOnCredentialsPostRequestBody();
createPasswordSingleSignOnCredentialsPostRequestBody.setId("5793aa3b-cca9-4794-679a240f8b58");
LinkedList<Credential> credentials = new LinkedList<Credential>();
Credential credential = new Credential();
credential.setFieldId("param_username");
credential.setValue("myusername");
credential.setType("username");
credentials.add(credential);
Credential credential1 = new Credential();
credential1.setFieldId("param_password");
credential1.setValue("pa$$w0rd");
credential1.setType("password");
credentials.add(credential1);
createPasswordSingleSignOnCredentialsPostRequestBody.setCredentials(credentials);
var result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").createPasswordSingleSignOnCredentials().post(createPasswordSingleSignOnCredentialsPostRequestBody);


```