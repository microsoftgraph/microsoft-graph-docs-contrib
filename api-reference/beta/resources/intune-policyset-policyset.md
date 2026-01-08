---
title: "policySet resource type"
description: "A class containing the properties used for PolicySet."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# policySet resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for PolicySet.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List policySets](../api/intune-policyset-policyset-list.md)|[policySet](../resources/intune-policyset-policyset.md) collection|List properties and relationships of the [policySet](../resources/intune-policyset-policyset.md) objects.|
|[Get policySet](../api/intune-policyset-policyset-get.md)|[policySet](../resources/intune-policyset-policyset.md)|Read properties and relationships of the [policySet](../resources/intune-policyset-policyset.md) object.|
|[Create policySet](../api/intune-policyset-policyset-create.md)|[policySet](../resources/intune-policyset-policyset.md)|Create a new [policySet](../resources/intune-policyset-policyset.md) object.|
|[Delete policySet](../api/intune-policyset-policyset-delete.md)|None|Deletes a [policySet](../resources/intune-policyset-policyset.md).|
|[Update policySet](../api/intune-policyset-policyset-update.md)|[policySet](../resources/intune-policyset-policyset.md)|Update the properties of a [policySet](../resources/intune-policyset-policyset.md) object.|
|[update action](../api/intune-policyset-policyset-update.md)|None||
|[getPolicySets action](../api/intune-policyset-policyset-getpolicysets.md)|[policySet](../resources/intune-policyset-policyset.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the PolicySet.|
|createdDateTime|DateTimeOffset|Creation time of the PolicySet.|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the PolicySet.|
|displayName|String|DisplayName of the PolicySet.|
|description|String|Description of the PolicySet.|
|status|[policySetStatus](../resources/intune-policyset-policysetstatus.md)|Validation/assignment status of the PolicySet. The possible values are: `unknown`, `validating`, `partialSuccess`, `success`, `error`, `notAssigned`.|
|errorCode|[errorCode](../resources/intune-policyset-errorcode.md)|Error code if any occured. The possible values are: `noError`, `unauthorized`, `notFound`, `deleted`.|
|guidedDeploymentTags|String collection|Tags of the guided deployment|
|roleScopeTags|String collection|RoleScopeTags of the PolicySet|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[policySetAssignment](../resources/intune-policyset-policysetassignment.md) collection|Assignments of the PolicySet.|
|items|[policySetItem](../resources/intune-policyset-policysetitem.md) collection|Items of the PolicySet with maximum count 100.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policySet",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "errorCode": "String",
  "guidedDeploymentTags": [
    "String"
  ],
  "roleScopeTags": [
    "String"
  ]
}
```