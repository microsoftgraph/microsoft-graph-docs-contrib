---
title: "networkAccessRoot resource type"
description: "Represents the top-level namespace for network access-related resources and functionalities within the network infrastructure. It serves as the entry point for accessing various network access-related APIs and operations."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# networkAccessRoot resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the top-level namespace for network access-related resources and functionalities within the network infrastructure. It serves as the entry point for accessing various network access-related APIs and operations.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingPolicies](../api/networkaccess-networkaccessroot-list-forwardingpolicies.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) collection|Get the forwardingPolicy resources from the forwardingPolicies navigation property.|
|[List forwardingProfiles](../api/networkaccess-networkaccessroot-list-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Get the forwardingProfile resources from the forwardingProfiles navigation property.|
|[List logs](../api/networkaccess-networkaccessroot-list-logs.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) collection|Get the logs resources from the logs navigation property.|
|[Get tenantStatus](../api/networkaccess-tenantstatus-get.md)|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) collection|Get the tenantStatus resources from the tenantStatus navigation property.|


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectivity|[microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md)|Connectivity represents all the connectivity components in Global Secure Access.|
|forwardingPolicies|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) collection|A forwarding policy defines the specific traffic that is routed through the Gloval Secure Access Service. It is then added to a forwarding profile.|
|forwardingProfiles|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile.|
|logs|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Represnts network connections that are routed through Global Secure Access.|
|tenantStatus|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Represents the status of the Global Secure Access services for the tenant.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.networkAccessRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.networkAccessRoot",
  "id": "String (identifier)"
}
```

