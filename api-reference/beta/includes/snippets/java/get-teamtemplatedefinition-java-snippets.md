---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamTemplateDefinition teamTemplateDefinition = graphClient.teamwork().teamTemplates("com.microsoft.teams.template.ManageAProject").definitions("Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNlbi1VUw==")
	.buildRequest()
	.get();

```