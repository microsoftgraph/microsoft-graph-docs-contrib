---
title: "trustFramework resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# trustFramework resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trustFrameworks](../api/trustframework-list.md)|[trustFramework](../resources/trustframework.md) collection|Get a list of the [trustFramework](../resources/trustframework.md) objects and their properties.|
|[Create trustFramework](../api/trustframework-create.md)|[trustFramework](../resources/trustframework.md)|Create a new [trustFramework](../resources/trustframework.md) object.|
|[Get trustFramework](../api/trustframework-get.md)|[trustFramework](../resources/trustframework.md)|Read the properties and relationships of a [trustFramework](../resources/trustframework.md) object.|
|[Update trustFramework](../api/trustframework-update.md)|[trustFramework](../resources/trustframework.md)|Update the properties of a [trustFramework](../resources/trustframework.md) object.|
|[Delete trustFramework](../api/trustframework-delete.md)|None|Deletes a [trustFramework](../resources/trustframework.md) object.|
|[List keySets](../api/trustframework-list-keysets.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md) collection|Get the trustFrameworkKeySets from the keySets navigation property.|
|[Create keySets](../api/trustframework-post-keysets.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Create a new keySets object.|
|[Get keySets](../api/trustframework-get-trustframeworkkeyset.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Read the properties and relationships of a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[Update keySets](../api/trustframework-update-keysets.md)|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md)|Update the properties of a keySets object.|
|[Delete keySets](../api/trustframework-delete-keysets.md)|None|Delete a [trustFrameworkKeySet](../resources/trustframeworkkeyset.md) object.|
|[List policies](../api/trustframework-list-policies.md)|[trustFrameworkPolicy](../resources/trustframeworkpolicy.md) collection|Get the trustFrameworkPolicies from the policies navigation property.|
|[Create policies](../api/trustframework-post-policies.md)|[trustFrameworkPolicy](../resources/trustframeworkpolicy.md)|Create a new policies object.|
|[Get policies](../api/trustframework-get-trustframeworkpolicy.md)|[trustFrameworkPolicy](../resources/trustframeworkpolicy.md)|Read the properties and relationships of a [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) object.|
|[Update policies](../api/trustframework-update-policies.md)|[trustFrameworkPolicy](../resources/trustframeworkpolicy.md)|Update the properties of a policies object.|
|[Delete policies](../api/trustframework-delete-policies.md)|None|Delete a [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|keySets|[trustFrameworkKeySet](../resources/trustframeworkkeyset.md) collection|**TODO: Add Description**|
|policies|[trustFrameworkPolicy](../resources/trustframeworkpolicy.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trustFramework",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustFramework",
  "id": "String (identifier)"
}
```

