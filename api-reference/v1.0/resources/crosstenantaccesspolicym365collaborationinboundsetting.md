---
title: "crossTenantAccessPolicyM365CollaborationInboundSetting resource type"
description: "Represents the inbound Microsoft 365 collaboration settings for a cross-tenant access policy that specify which users from external organizations can collaborate with your organization using Microsoft 365 apps."
author: "srinivaspadala-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/06/2026
---

# crossTenantAccessPolicyM365CollaborationInboundSetting resource type

Namespace: microsoft.graph

Represents the inbound Microsoft 365 collaboration settings for a cross-tenant access policy that specify which users from external organizations can collaborate with your organization using Microsoft 365 apps.

This resource is used by the **m365CollaborationInbound** property of the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) and [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resources.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| users | [crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md) | Defines the target users from other organizations who are allowed inbound Microsoft 365 collaboration with your organization. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyM365CollaborationInboundSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyM365CollaborationInboundSetting",
  "users": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
  }
}
```
