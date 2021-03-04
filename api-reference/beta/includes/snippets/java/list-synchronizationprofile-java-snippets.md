---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationSynchronizationProfileCollectionPage synchronizationProfiles = graphClient.education().synchronizationProfiles()
	.buildRequest()
	.get();

```