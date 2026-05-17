---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.QualityUpdateRing ring = new com.microsoft.graph.beta.models.windowsupdates.QualityUpdateRing();
ring.setOdataType("#microsoft.graph.windowsUpdates.qualityUpdateRing");
ring.setDisplayName("Test Policy 123");
ring.setDescription("Pre-production test policy");
ring.setDeferralInDays(5);
ring.setIsPaused(true);
ring.setIsHotpatchEnabled(true);
com.microsoft.graph.models.windowsupdates.Ring result = graphClient.admin().windows().updates().policies().byPolicyId("{policy-id}").rings().byRingId("{ring-id}").patch(ring);


```