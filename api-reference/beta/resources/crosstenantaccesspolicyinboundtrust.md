---
title: "crossTenantAccessPolicyInboundTrust resource type"
description: "Used to define which conditional access claims you want to accept from other organizations via your cross tenant access policy configuration."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicyInboundTrust resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to define which conditional access claims you want to accept from other organizations via your cross tenant access policy configuration. These can be configured in your default or partner specific configurations.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isCompliantDeviceAccepted|Boolean|**TODO: Add Description**|
|isHybridAzureADJoinedDeviceAccepted|Boolean|**TODO: Add Description**|
|isMfaAccepted|Boolean|**TODO: Add Description**|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyInboundTrust",
  "isMfaAccepted": "Boolean",
  "isCompliantDeviceAccepted": "Boolean",
  "isHybridAzureADJoinedDeviceAccepted": "Boolean"
}
```
