---
title: "windowsQualityUpdateCatalogItemPolicyDetail resource type"
description: "Class to describe quality update policy's approval detail for specific catalog item"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCatalogItemPolicyDetail resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Class to describe quality update policy's approval detail for specific catalog item

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|Guid|Policy Id for this approval intend|
|catalogItemId|String|Catalog item id for this approval intend|
|approvalStatus|[windowsQualityUpdateApprovalStatus](../resources/intune-softwareupdate-windowsqualityupdateapprovalstatus.md)|Approval status for this approval intend. Possible values are: `unknown`, `approved`, `suspended`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogItemPolicyDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItemPolicyDetail",
  "policyId": "Guid",
  "catalogItemId": "String",
  "approvalStatus": "String"
}
```