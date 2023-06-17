---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Incident incident = new Incident();
incident.classification = AlertClassification.TRUE_POSITIVE;
incident.determination = AlertDetermination.MULTI_STAGED_ATTACK;
LinkedList<String> customTagsList = new LinkedList<String>();
customTagsList.add("Demo");
incident.customTags = customTagsList;

graphClient.security().incidents("2972395")
	.buildRequest()
	.patch(incident);

```