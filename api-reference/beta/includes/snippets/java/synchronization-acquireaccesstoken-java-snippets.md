---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.applications.item.synchronization.acquireaccesstoken.AcquireAccessTokenPostRequestBody acquireAccessTokenPostRequestBody = new com.microsoft.graph.beta.applications.item.synchronization.acquireaccesstoken.AcquireAccessTokenPostRequestBody();
LinkedList<SynchronizationSecretKeyStringValuePair> credentials = new LinkedList<SynchronizationSecretKeyStringValuePair>();
SynchronizationSecretKeyStringValuePair synchronizationSecretKeyStringValuePair = new SynchronizationSecretKeyStringValuePair();
synchronizationSecretKeyStringValuePair.setOdataType("microsoft.graph.synchronizationSecretKeyStringValuePair");
credentials.add(synchronizationSecretKeyStringValuePair);
acquireAccessTokenPostRequestBody.setCredentials(credentials);
graphClient.applications().byApplicationId("{application-id}").synchronization().acquireAccessToken().post(acquireAccessTokenPostRequestBody);


```