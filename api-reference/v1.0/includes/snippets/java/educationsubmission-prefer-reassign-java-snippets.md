---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "include-unknown-enum-members"));

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("4cc928e3-666c-4360-8688-a15776ce53b4").submissions("5883eaeb-9760-f8e0-6832-a122c4f020be")
	.reassign()
	.buildRequest( requestOptions )
	.post();

```