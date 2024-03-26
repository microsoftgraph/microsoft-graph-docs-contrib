---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.external.connections.item.items.item.microsoftgraphexternalconnectorsaddactivities.AddActivitiesPostRequestBody addActivitiesPostRequestBody = new com.microsoft.graph.beta.external.connections.item.items.item.microsoftgraphexternalconnectorsaddactivities.AddActivitiesPostRequestBody();
LinkedList<com.microsoft.graph.beta.models.externalconnectors.ExternalActivity> activities = new LinkedList<com.microsoft.graph.beta.models.externalconnectors.ExternalActivity>();
com.microsoft.graph.beta.models.externalconnectors.ExternalActivity externalActivity = new com.microsoft.graph.beta.models.externalconnectors.ExternalActivity();
externalActivity.setOdataType("#microsoft.graph.externalConnectors.externalActivity");
externalActivity.setType(com.microsoft.graph.beta.models.externalconnectors.ExternalActivityType.Created);
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-04-06T18:04:31.033Z");
externalActivity.setStartDateTime(startDateTime);
com.microsoft.graph.beta.models.externalconnectors.Identity performedBy = new com.microsoft.graph.beta.models.externalconnectors.Identity();
performedBy.setType(com.microsoft.graph.beta.models.externalconnectors.IdentityType.User);
performedBy.setId("1f0c997e-99f7-43f1-8cca-086f8d42be8d");
externalActivity.setPerformedBy(performedBy);
activities.add(externalActivity);
addActivitiesPostRequestBody.setActivities(activities);
var result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").items().byExternalItemId("{externalItem-id}").microsoftGraphExternalConnectorsAddActivities().post(addActivitiesPostRequestBody);


```