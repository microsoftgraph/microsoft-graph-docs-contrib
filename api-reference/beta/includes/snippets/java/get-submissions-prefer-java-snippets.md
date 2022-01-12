---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "include-unknown-enum-members"));

EducationSubmissionCollectionPage submissions = graphClient.education().classes("59069eb2-2a09-4d90-bb19-2089cc69d613").assignments("80da1069-a635-4913-813f-d775a5470a8f").submissions()
	.buildRequest( requestOptions )
	.get();

```