---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.networkaccess().filteringProfiles("c308a3af-e3f4-4e7b-b8cf-d17fd7acb97c").policies("65973c4b-0239-47ec-9c22-aef144cd2fec")
	.buildRequest()
	.delete();

```