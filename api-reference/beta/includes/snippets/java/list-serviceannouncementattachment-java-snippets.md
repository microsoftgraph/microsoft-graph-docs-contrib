---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.customRequest("/admin/serviceAnnouncement/messages/MC54091/attachmentsArchive", InputStream.class)
	.buildRequest()
	.get();

```