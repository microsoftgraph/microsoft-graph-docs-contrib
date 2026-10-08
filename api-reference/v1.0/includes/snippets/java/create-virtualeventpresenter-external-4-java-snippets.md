---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventPresenter virtualEventPresenter = new VirtualEventPresenter();
CommunicationsGuestIdentity identity = new CommunicationsGuestIdentity();
identity.setOdataType("#microsoft.graph.communicationsGuestIdentity");
identity.setDisplayName("Guest Speaker");
identity.setEmail("guest.speaker@fabrikam.com");
virtualEventPresenter.setIdentity(identity);
VirtualEventPresenter result = graphClient.solutions().virtualEvents().townhalls().byVirtualEventTownhallId("{virtualEventTownhall-id}").presenters().post(virtualEventPresenter);


```