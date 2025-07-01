---
title: "cloudPcFrontlineSharedDeviceDetail resource type"
description: "Indicates the Cloud PC device details associated with Front line Shared service plan. Example: 'assignedToUserPrincipalName'."
author: "ziqifu9527"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/30/2025
---

# cloudPcFrontlineSharedDeviceDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the Cloud PC device details associated with Front line Shared service plan. Example: 'assignedToUserPrincipalName'.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedToUserPrincipalName|String|The user principal name (UPN) of the user which the device currently assigned to. If no user is assigned, it remains blank. Example value is `pmitchell@cpccustomer001.onmicrosoft.com` and ``.|

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
  "assignedToUserPrincipalName": "pmitchell@cpccustomer001.onmicrosoft.com",
}
```
