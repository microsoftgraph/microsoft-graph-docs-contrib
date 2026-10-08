---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.incidents.microsoftgraphsecuritymergeincidents.MergeIncidentsPostRequestBody mergeIncidentsPostRequestBody = new com.microsoft.graph.beta.security.incidents.microsoftgraphsecuritymergeincidents.MergeIncidentsPostRequestBody();
LinkedList<String> incidentIds = new LinkedList<String>();
incidentIds.add("2972395");
incidentIds.add("2972396");
mergeIncidentsPostRequestBody.setIncidentIds(incidentIds);
mergeIncidentsPostRequestBody.setIncidentComment("Merging related incidents from the same campaign");
mergeIncidentsPostRequestBody.setMergeReasons(EnumSet.of(com.microsoft.graph.beta.models.security.CorrelationReason.SameCampaign, com.microsoft.graph.beta.models.security.CorrelationReason.SameActor));
var result = graphClient.security().incidents().microsoftGraphSecurityMergeIncidents().post(mergeIncidentsPostRequestBody);


```