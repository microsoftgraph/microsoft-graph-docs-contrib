---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalGroupMember externalGroupMember = new ExternalGroupMember();
externalGroupMember.id = "e5477431-1038-484e-bf69-1dfedb97a110";
externalGroupMember.type = ExternalGroupMemberType.USER;

graphClient.external().connections("contosohr").groups("31bea3d537902000").members()
	.buildRequest()
	.post(externalGroupMember);

```