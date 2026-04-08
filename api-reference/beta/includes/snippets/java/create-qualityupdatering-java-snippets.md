---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.QualityUpdateRing ring = new com.microsoft.graph.beta.models.windowsupdates.QualityUpdateRing();
ring.setOdataType("#microsoft.graph.windowsUpdates.qualityUpdateRing");
ring.setDisplayName("Ring0 - IT devices");
ring.setDescription("First deployment ring to test updates before going to prod.");
com.microsoft.graph.beta.models.windowsupdates.IncludedGroupAssignment includedGroupAssignment = new com.microsoft.graph.beta.models.windowsupdates.IncludedGroupAssignment();
includedGroupAssignment.setOdataType("microsoft.graph.windowsUpdates.includedGroupAssignment");
ring.setIncludedGroupAssignment(includedGroupAssignment);
com.microsoft.graph.beta.models.windowsupdates.ExcludedGroupAssignment excludedGroupAssignment = new com.microsoft.graph.beta.models.windowsupdates.ExcludedGroupAssignment();
excludedGroupAssignment.setOdataType("microsoft.graph.windowsUpdates.excludedGroupAssignment");
ring.setExcludedGroupAssignment(excludedGroupAssignment);
ring.setDeferralInDays(5);
ring.setIsPaused(false);
com.microsoft.graph.models.windowsupdates.Ring result = graphClient.admin().windows().updates().policies().byPolicyId("{policy-id}").rings().post(ring);


```