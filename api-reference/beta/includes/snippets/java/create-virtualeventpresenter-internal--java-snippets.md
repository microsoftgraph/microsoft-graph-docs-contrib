---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventPresenter virtualEventPresenter = new VirtualEventPresenter();
CommunicationsUserIdentity identity = new CommunicationsUserIdentity();
identity.setOdataType("#microsoft.graph.communicationsUserIdentity");
identity.setId("7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b");
virtualEventPresenter.setIdentity(identity);
VirtualEventPresenter result = graphClient.solutions().virtualEvents().townhalls().byVirtualEventTownhallId("{virtualEventTownhall-id}").presenters().post(virtualEventPresenter);


```