---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage groups = graphClient.groups()
	.buildRequest()
	.filter("assignedLicenses/any()")
	.expand("members($select=id,displayName)")
	.select("id,assignedLicenses")
	.get();

```