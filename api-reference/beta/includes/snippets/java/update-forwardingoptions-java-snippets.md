---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ForwardingOptions forwardingOptions = new com.microsoft.graph.beta.models.networkaccess.ForwardingOptions();
forwardingOptions.setSkipDnsLookupState(com.microsoft.graph.beta.models.networkaccess.Status.Disabled);
com.microsoft.graph.models.networkaccess.ForwardingOptions result = graphClient.networkAccess().settings().forwardingOptions().patch(forwardingOptions);


```