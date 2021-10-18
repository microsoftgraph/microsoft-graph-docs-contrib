---
title: "azureADLicenseUsage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# azureADLicenseUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureADLicenseUsages](../api/azureadlicenseusage-list.md)|[azureADLicenseUsage](../resources/azureadlicenseusage.md) collection|Get a list of the [azureADLicenseUsage](../resources/azureadlicenseusage.md) objects and their properties.|
|[Get azureADLicenseUsage](../api/azureadlicenseusage-get.md)|[azureADLicenseUsage](../resources/azureadlicenseusage.md)|Read the properties and relationships of an [azureADLicenseUsage](../resources/azureadlicenseusage.md) object.|
|[Update azureADLicenseUsage](../api/azureadlicenseusage-update.md)|[azureADLicenseUsage](../resources/azureadlicenseusage.md)|Update the properties of an [azureADLicenseUsage](../resources/azureadlicenseusage.md) object.|
|[Delete azureADLicenseUsage](../api/azureadlicenseusage-delete.md)|None|Deletes an [azureADLicenseUsage](../resources/azureadlicenseusage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|licenseInfoDetails|[licenseInfoDetail](../resources/licenseinfodetail.md) collection|**TODO: Add Description**|
|snapshotDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureADLicenseUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADLicenseUsage",
  "id": "String (identifier)",
  "snapshotDateTime": "String (timestamp)",
  "licenseInfoDetails": [
    {
      "@odata.type": "microsoft.graph.licenseInfoDetail"
    }
  ]
}
```

