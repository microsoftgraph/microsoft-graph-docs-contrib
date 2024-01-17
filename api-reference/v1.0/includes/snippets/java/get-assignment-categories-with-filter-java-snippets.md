---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategoryCollectionPage categories = graphClient.education().classes("77c30802-3e00-4e91-975f-f2aaa2c5a569").assignments("c3307ea8-1343-4109-aeb9-92b9a74bf131").categories()
	.buildRequest()
	.filter("id eq '74b03ab5-5832-4f99-89f5-d52da13d93f7'")
	.get();

```