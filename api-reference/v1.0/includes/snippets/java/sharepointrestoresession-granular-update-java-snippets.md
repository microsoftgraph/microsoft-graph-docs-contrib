---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointRestoreSession sharePointRestoreSession = new SharePointRestoreSession();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> granularSiteRestoreArtifactsDelta = new LinkedList<Object>();
 property = new ();
property.setBrowseSessionId("m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE");
property.setId("f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,8d1ba53f-986a-409f-bf90-3bf55dbd7526");
granularSiteRestoreArtifactsDelta.add(property);
 property1 = new ();
 removed = new ();
removed.setReason("changed");
property1.setRemoved(removed);
property1.setId("a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2");
granularSiteRestoreArtifactsDelta.add(property1);
additionalData.put("granularSiteRestoreArtifacts@delta", granularSiteRestoreArtifactsDelta);
sharePointRestoreSession.setAdditionalData(additionalData);
SharePointRestoreSession result = graphClient.solutions().backupRestore().sharePointRestoreSessions().bySharePointRestoreSessionId("{sharePointRestoreSession-id}").patch(sharePointRestoreSession);


```