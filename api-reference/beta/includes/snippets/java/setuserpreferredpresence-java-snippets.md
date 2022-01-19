---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String availability = "DoNotDisturb";

String activity = "DoNotDisturb";

Duration expirationDuration = DatatypeFactory.newInstance().newDuration("PT8H");

graphClient.users("fa8bf3dc-eca7-46b7-bad1-db199b62afc3").presence()
	.setUserPreferredPresence(PresenceSetUserPreferredPresenceParameterSet
		.newBuilder()
		.withAvailability(availability)
		.withActivity(activity)
		.withExpirationDuration(expirationDuration)
		.build())
	.buildRequest()
	.post();

```