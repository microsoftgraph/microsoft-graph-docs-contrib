---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.synchronization.secrets.SecretsPutRequestBody secretsPutRequestBody = new com.microsoft.graph.serviceprincipals.item.synchronization.secrets.SecretsPutRequestBody();
LinkedList<SynchronizationSecretKeyStringValuePair> value = new LinkedList<SynchronizationSecretKeyStringValuePair>();
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair.setKey(SynchronizationSecret.BaseAddress);
synchronizationSecretKeyStringValuePair.setValue("user@domain.com");
value.add(synchronizationSecretKeyStringValuePair);
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair1 = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair1.setKey(SynchronizationSecret.SecretToken);
synchronizationSecretKeyStringValuePair1.setValue("password-value");
value.add(synchronizationSecretKeyStringValuePair1);
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair2 = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair2.setKey(SynchronizationSecret.SyncNotificationSettings);
synchronizationSecretKeyStringValuePair2.setValue("{\"Enabled\":false,\"DeleteThresholdEnabled\":false}");
value.add(synchronizationSecretKeyStringValuePair2);
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair3 = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair3.setKey(SynchronizationSecret.SyncAll);
synchronizationSecretKeyStringValuePair3.setValue("false");
value.add(synchronizationSecretKeyStringValuePair3);
secretsPutRequestBody.setValue(value);
var result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().secrets().put(secretsPutRequestBody);


```