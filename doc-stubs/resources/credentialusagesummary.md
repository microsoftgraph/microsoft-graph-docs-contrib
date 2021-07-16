---
title: "credentialUsageSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# credentialUsageSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List credentialUsageSummaries](../api/credentialusagesummary-list.md)|[credentialUsageSummary](../resources/credentialusagesummary.md) collection|Get a list of the [credentialUsageSummary](../resources/credentialusagesummary.md) objects and their properties.|
|[Create credentialUsageSummary](../api/credentialusagesummary-create.md)|[credentialUsageSummary](../resources/credentialusagesummary.md)|Create a new [credentialUsageSummary](../resources/credentialusagesummary.md) object.|
|[Get credentialUsageSummary](../api/credentialusagesummary-get.md)|[credentialUsageSummary](../resources/credentialusagesummary.md)|Read the properties and relationships of a [credentialUsageSummary](../resources/credentialusagesummary.md) object.|
|[Update credentialUsageSummary](../api/credentialusagesummary-update.md)|[credentialUsageSummary](../resources/credentialusagesummary.md)|Update the properties of a [credentialUsageSummary](../resources/credentialusagesummary.md) object.|
|[Delete credentialUsageSummary](../api/credentialusagesummary-delete.md)|None|Deletes a [credentialUsageSummary](../resources/credentialusagesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authMethod|usageAuthMethod|**TODO: Add Description**. Possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobileCall`, `fido`, `appPassword`, `unknownFutureValue`.|
|failureActivityCount|Int64|**TODO: Add Description**|
|feature|featureType|**TODO: Add Description**. Possible values are: `registration`, `reset`, `unknownFutureValue`.|
|id|String|**TODO: Add Description**|
|successfulActivityCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.credentialUsageSummary",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.credentialUsageSummary",
  "id": "String (identifier)",
  "feature": "String",
  "successfulActivityCount": "Integer",
  "failureActivityCount": "Integer",
  "authMethod": "String"
}
```

