---
title: "credentialUserRegistrationCount resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# credentialUserRegistrationCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List credentialUserRegistrationCounts](../api/credentialuserregistrationcount-list.md)|[credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) collection|Get a list of the [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) objects and their properties.|
|[Get credentialUserRegistrationCount](../api/credentialuserregistrationcount-get.md)|[credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md)|Read the properties and relationships of a [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object.|
|[Update credentialUserRegistrationCount](../api/credentialuserregistrationcount-update.md)|[credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md)|Update the properties of a [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object.|
|[Delete credentialUserRegistrationCount](../api/credentialuserregistrationcount-delete.md)|None|Deletes a [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|totalUserCount|Int64|**TODO: Add Description**|
|userRegistrationCounts|[userRegistrationCount](../resources/userregistrationcount.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.credentialUserRegistrationCount",
  "id": "String (identifier)",
  "totalUserCount": "Integer",
  "userRegistrationCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationCount"
    }
  ]
}
```

