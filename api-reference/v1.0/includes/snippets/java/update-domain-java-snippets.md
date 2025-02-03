---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Domain domain = new Domain();
domain.setIsDefault(true);
LinkedList<String> supportedServices = new LinkedList<String>();
supportedServices.add("Email");
supportedServices.add("OfficeCommunicationsOnline");
domain.setSupportedServices(supportedServices);
Domain result = graphClient.domains().byDomainId("{domain-id}").patch(domain);


```