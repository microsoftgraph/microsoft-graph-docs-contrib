---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<ExternalActivity> activitiesList = new LinkedList<ExternalActivity>();
ExternalActivity activities = new ExternalActivity();
activities.type = ExternalActivityType.CREATED;
activities.startDateTime = OffsetDateTimeSerializer.deserialize("2021-04-06T18:04:31.033Z");
Identity performedBy = new Identity();
performedBy.type = IdentityType.USER;
performedBy.id = "1f0c997e-99f7-43f1-8cca-086f8d42be8d";
activities.performedBy = performedBy;

activitiesList.add(activities);
ExternalActivityCollectionResponse externalActivityCollectionResponse = new ExternalActivityCollectionResponse();
externalActivityCollectionResponse.value = activitiesList;
ExternalActivityCollectionPage externalActivityCollectionPage = new ExternalActivityCollectionPage(externalActivityCollectionResponse, null);

graphClient.external().connections("contosohr").items("TSP228082938")
	.addActivities(ExternalItemAddActivitiesParameterSet
		.newBuilder()
		.withActivities(activitiesList)
		.build())
	.buildRequest()
	.post();

```