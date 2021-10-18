---
title: "azureADUserFeatureUsage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# azureADUserFeatureUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureADUserFeatureUsages](../api/azureaduserfeatureusage-list.md)|[azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) collection|Get a list of the [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) objects and their properties.|
|[Get azureADUserFeatureUsage](../api/azureaduserfeatureusage-get.md)|[azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md)|Read the properties and relationships of an [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) object.|
|[Update azureADUserFeatureUsage](../api/azureaduserfeatureusage-update.md)|[azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md)|Update the properties of an [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) object.|
|[Delete azureADUserFeatureUsage](../api/azureaduserfeatureusage-delete.md)|None|Deletes an [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|featureUsageDetails|[featureUsageDetail](../resources/featureusagedetail.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|licenseAssigned|azureADLicenseType|**TODO: Add Description**. The possible values are: `none`, `free`, `basic`, `premiumP1`, `premiumP2`, `unknownFutureValue`.|
|licenseRecommended|azureADLicenseType|**TODO: Add Description**. The possible values are: `none`, `free`, `basic`, `premiumP1`, `premiumP2`, `unknownFutureValue`.|
|userDisplayName|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureADUserFeatureUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADUserFeatureUsage",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "licenseRecommended": "String",
  "licenseAssigned": "String",
  "featureUsageDetails": [
    {
      "@odata.type": "microsoft.graph.featureUsageDetail"
    }
  ]
}
```

