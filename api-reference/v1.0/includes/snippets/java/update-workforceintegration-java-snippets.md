---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkforceIntegration workforceIntegration = new WorkforceIntegration();
workforceIntegration.setDisplayName("ABCWorkforceIntegration");
workforceIntegration.setApiVersion(1);
workforceIntegration.setIsActive(true);
WorkforceIntegrationEncryption encryption = new WorkforceIntegrationEncryption();
encryption.setProtocol(WorkforceIntegrationEncryptionProtocol.SharedSecret);
encryption.setSecret("My Secret");
workforceIntegration.setEncryption(encryption);
workforceIntegration.setUrl("https://ABCWorkforceIntegration.com/Contoso/");
workforceIntegration.setSupportedEntities(EnumSet.of(WorkforceIntegrationSupportedEntities.Shift, WorkforceIntegrationSupportedEntities.SwapRequest));
workforceIntegration.setEligibilityFilteringEnabledEntities(EnumSet.of(EligibilityFilteringEnabledEntities.SwapRequest));
WorkforceIntegration result = graphClient.teamwork().workforceIntegrations().byWorkforceIntegrationId("{workforceIntegration-id}").patch(workforceIntegration);


```