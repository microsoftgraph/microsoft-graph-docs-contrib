---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkforceIntegration workforceIntegration = new WorkforceIntegration();
workforceIntegration.setDisplayName("displayName-value");
workforceIntegration.setApiVersion(99);
WorkforceIntegrationEncryption encryption = new WorkforceIntegrationEncryption();
encryption.setProtocol(WorkforceIntegrationEncryptionProtocol.SharedSecret);
encryption.setSecret("secret-value");
workforceIntegration.setEncryption(encryption);
workforceIntegration.setIsActive(true);
workforceIntegration.setUrl("url-value");
workforceIntegration.setSupports(EnumSet.of(WorkforceIntegrationSupportedEntities.None));
WorkforceIntegration result = graphClient.teamwork().workforceIntegrations().post(workforceIntegration);


```