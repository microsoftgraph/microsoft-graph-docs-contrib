---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "include-unknown-enum-members"));

graphClient.education().classes("bf1f1963-05f6-4cba-903c-5892b4ce3bd7").assignments("db8e6b0b-dba4-4c69-81b2-9ba7313c0b7a").submissions("b9dab587-5fcc-30ae-f7fa-41a47fb89972")
	.reassign()
	.buildRequest( requestOptions )
	.post();

```