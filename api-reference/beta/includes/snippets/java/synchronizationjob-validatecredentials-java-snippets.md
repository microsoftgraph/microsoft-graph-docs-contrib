---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.serviceprincipals.item.synchronization.jobs.item.validatecredentials.ValidateCredentialsPostRequestBody validateCredentialsPostRequestBody = new com.microsoft.graph.beta.serviceprincipals.item.synchronization.jobs.item.validatecredentials.ValidateCredentialsPostRequestBody();
LinkedList<SynchronizationSecretKeyStringValuePair> credentials = new LinkedList<SynchronizationSecretKeyStringValuePair>();
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair.setKey(SynchronizationSecret.UserName);
synchronizationSecretKeyStringValuePair.setValue("user@domain.com");
credentials.add(synchronizationSecretKeyStringValuePair);
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair1 = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair1.setKey(SynchronizationSecret.Password);
synchronizationSecretKeyStringValuePair1.setValue("password-value");
credentials.add(synchronizationSecretKeyStringValuePair1);
validateCredentialsPostRequestBody.setCredentials(credentials);
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().jobs().bySynchronizationJobId("{synchronizationJob-id}").validateCredentials().post(validateCredentialsPostRequestBody);


```