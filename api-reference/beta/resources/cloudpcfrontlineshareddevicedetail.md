---
title: "cloudPcFrontlineSharedDeviceDetail resource type"
description: "Represents the Cloud PC device details (for example, assignedToUserPrincipalName) associated with the frontline shared service plan."
author: "ziqifu9527"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/30/2025
---

# cloudPcFrontlineSharedDeviceDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC device details (for example, **assignedToUserPrincipalName**) associated with the frontline shared service plan.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedToUserPrincipalName|String|The user principal name (UPN) of the user to whom the device is currently assigned. If no user is assigned, this field remains empty. Example values, `john.doe@contoso.onmicrosoft.com` and ``.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcFrontlineSharedDeviceDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcFrontlineSharedDeviceDetail",
  "assignedToUserPrincipalName": "String"
}
```
