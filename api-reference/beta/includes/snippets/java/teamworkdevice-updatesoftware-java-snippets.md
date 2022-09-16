---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkSoftwareType softwareType = TeamworkSoftwareType.TEAMS_CLIENT;

String softwareVersion = "1.0.96.22";

graphClient.teamwork().devices("0f3ce432-e432-0f3c-32e4-3c0f32e43c0f")
	.updateSoftware(TeamworkDeviceUpdateSoftwareParameterSet
		.newBuilder()
		.withSoftwareType(softwareType)
		.withSoftwareVersion(softwareVersion)
		.build())
	.buildRequest()
	.post();

```