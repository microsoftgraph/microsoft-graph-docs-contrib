---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<ExternalActivity> activitiesList = new LinkedList<ExternalActivity>();
ExternalActivity activities = new ExternalActivity();
activities.type = ExternalActivityType.VIEWED;
activities.startDateTime = OffsetDateTimeSerializer.deserialize("String (timestamp)");

activitiesList.add(activities);
ExternalActivityCollectionResponse externalActivityCollectionResponse = new ExternalActivityCollectionResponse();
externalActivityCollectionResponse.value = activitiesList;
ExternalActivityCollectionPage externalActivityCollectionPage = new ExternalActivityCollectionPage(externalActivityCollectionResponse, null);

graphClient.connections("{connectionsId}").items("{externalItemId}")
	.addActivities(ExternalItemAddActivitiesParameterSet
		.newBuilder()
		.withActivities(activitiesList)
		.build())
	.buildRequest()
	.post();

```