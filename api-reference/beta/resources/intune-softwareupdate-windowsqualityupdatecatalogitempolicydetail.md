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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Class to describe quality update policy's approval detail for specific catalog item

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|Guid|Policy Id for this approval intend|
|catalogItemId|String|Catalog item id for this approval intend|
|approvalStatus|[windowsQualityUpdateApprovalStatus](../resources/intune-softwareupdate-windowsqualityupdateapprovalstatus.md)|Approval status for this approval intend. The possible values are: `unknown`, `approved`, `suspended`, `unknownFutureValue`.|

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