---
title: "networkAccessRoot resource type"
description: "Represents the top-level namespace for network access-related resources and functionalities within the network infrastructure. It serves as the entry point for accessing various network access-related APIs and operations."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 03/21/2024
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
|filteringPolicies|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) collection|A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.|
|filteringProfiles|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) collection|A filtering profile associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups.|
|threatIntelligencePolicy|[microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)|A threat intelligence policy allows you to apply security controls blocking known threats and malicious destinations based on Microsoft's threat indicator feeds.|
|logs|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Represents network connections that are routed through Global Secure Access.|
|reports|[microsoft.graph.networkaccess.reports](../resources/networkaccess-reports.md)|Represents the status of the Global Secure Access services for the tenant.|
|settings|[microsoft.graph.networkaccess.settings](../resources/networkaccess-settings.md)|Global Secure Access settings.|
|tenantStatus|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Represents the status of the Global Secure Access services for the tenant.|
|tls|[microsoft.graph.networkaccess.tlsTermination](../resources/networkaccess-tlstermination.md)|A container for tenant-level TLS inspection settings for Global Secure Access. |
|tlsInspectionPolicies|[microsoft.graph.networkaccess.tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) collection|Allows you to configure TLS termination for your organization's network traffic through Global Secure Access. |


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
