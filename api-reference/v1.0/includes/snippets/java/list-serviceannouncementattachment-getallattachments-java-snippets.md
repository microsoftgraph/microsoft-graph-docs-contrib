---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServiceAnnouncementAttachmentCollectionPage attachments = graphClient.admin().serviceAnnouncement().messages("MC54091").attachments()
	.buildRequest()
	.get();

```