---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

M365CapabilityBase m365CapabilityBase = new M365CapabilityBase();
M365CapabilityInboundAccess inboundAccess = new M365CapabilityInboundAccess();
inboundAccess.setIsAllowed(false);
m365CapabilityBase.setInboundAccess(inboundAccess);
M365CapabilityBase result = graphClient.policies().crossTenantAccessPolicy().defaultEscaped().m365Capabilities().byM365CapabilityBaseName("{m365CapabilityBase-name}").patch(m365CapabilityBase);


```