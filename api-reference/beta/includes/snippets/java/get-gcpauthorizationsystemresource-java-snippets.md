---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpAuthorizationSystemResource gcpAuthorizationSystemResource = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().resources("cHJvamVjdHMvaGVsbG8td29ybGQtMjMxMTA3L3pvbmVzL3VzLWNlbnRyYWwxLWEvaW5zdGFuY2VzL2luc3RhbmNlLTE")
	.buildRequest()
	.get();

```