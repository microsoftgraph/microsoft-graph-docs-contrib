---
title: "privilegedReadSetting resource type"
description: "Specifies the customer-owned application in the **privilegedReadSetting** property of resourcePolicyConfiguration for privileged fetchAsPolicy() calls."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# privilegedReadSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the customer-owned application in the **privilegedReadSetting** property of [resourcePolicyConfiguration](../resources/resourcepolicyconfiguration.md) for privileged `fetchAsPolicy()` calls.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appId|String|The customer-owned application's client ID used for `fetchAsPolicy()` calls. Setting this value activates privileged reads for the tenant. When absent or null, privileged reads are disabled and `fetchAsPolicy()` fails with HTTP 403.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.privilegedReadSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedReadSetting",
  "appId": "String"
}
```
