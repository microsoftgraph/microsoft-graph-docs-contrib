---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventPresenter virtualEventPresenter = new VirtualEventPresenter();
Identity identity = new Identity();
identity.setId("7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "77229959-e479-4a73-b6e0-ddac27be315c");
identity.setAdditionalData(additionalData);
virtualEventPresenter.setIdentity(identity);
virtualEventPresenter.setEmail("kenneth.brown@contoso.com");
VirtualEventPresenter result = graphClient.solutions().virtualEvents().townhalls().byVirtualEventTownhallId("{virtualEventTownhall-id}").presenters().post(virtualEventPresenter);


```