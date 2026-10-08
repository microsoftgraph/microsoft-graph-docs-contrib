---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

M365CapabilityBase m365CapabilityBase = new M365CapabilityBase();
M365CapabilityInboundAccess inboundAccess = new M365CapabilityInboundAccess();
inboundAccess.setIsAllowed(false);
M365CapabilityResourceScopes resourceScopes = new M365CapabilityResourceScopes();
LinkedList<M365CapabilityResourceScope> included = new LinkedList<M365CapabilityResourceScope>();
M365CapabilityResourceScope m365CapabilityResourceScope = new M365CapabilityResourceScope();
m365CapabilityResourceScope.setResourceId("ad4fc698-74dc-4f62-9e71-ba9b591e8e74");
m365CapabilityResourceScope.setResourceType(M365ResourceType.Group);
included.add(m365CapabilityResourceScope);
M365CapabilityResourceScope m365CapabilityResourceScope1 = new M365CapabilityResourceScope();
m365CapabilityResourceScope1.setResourceId("070061d7-a98e-43d3-b708-0758d3738ac7");
m365CapabilityResourceScope1.setResourceType(M365ResourceType.Group);
included.add(m365CapabilityResourceScope1);
resourceScopes.setIncluded(included);
LinkedList<M365CapabilityResourceScope> excluded = new LinkedList<M365CapabilityResourceScope>();
resourceScopes.setExcluded(excluded);
inboundAccess.setResourceScopes(resourceScopes);
m365CapabilityBase.setInboundAccess(inboundAccess);
M365CapabilityBase result = graphClient.policies().crossTenantAccessPolicy().partners().byCrossTenantAccessPolicyConfigurationPartnerTenantId("{crossTenantAccessPolicyConfigurationPartner-tenantId}").m365Capabilities().byM365CapabilityBaseName("{m365CapabilityBase-name}").patch(m365CapabilityBase);


```