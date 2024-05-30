---
title: "networkAccessRoot resource type"
description: "Represents the top-level namespace for network access-related resources and functionalities within the network infrastructure. It serves as the entry point for accessing various network access-related APIs and operations."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# networkAccessRoot resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the top-level namespace for network access-related resources and functionalities within the network infrastructure. It serves as the entry point for accessing various network access-related APIs and operations.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectivity|[microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md)|Connectivity represents all the connectivity components in Global Secure Access.|
|forwardingPolicies|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) collection|A forwarding policy defines the specific traffic that is routed through the Global Secure Access Service. It's then added to a forwarding profile.|
|forwardingProfiles|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile.|
|filteringPolicies|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) collection|A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.|
|filteringProfiles|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) collection|A filtering profile associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups.|
|logs|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Represents network connections that are routed through Global Secure Access.|
|reports|[microsoft.graph.networkaccess.reports](../resources/networkaccess-reports.md)|Represents the status of the Global Secure Access services for the tenant.|
|settings|[microsoft.graph.networkaccess.settings](../resources/networkaccess-settings.md)|Global Secure Access settings.|
|tenantStatus|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Represents the status of the Global Secure Access services for the tenant.|

## JSON representation
The following JSON representation shows the resource type.
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

