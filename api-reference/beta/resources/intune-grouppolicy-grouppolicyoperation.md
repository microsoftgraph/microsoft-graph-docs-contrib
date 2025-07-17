---
title: "groupPolicyOperation resource type"
description: "The entity represents an group policy operation."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# groupPolicyOperation resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The entity represents an group policy operation.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyOperations](../api/intune-grouppolicy-grouppolicyoperation-list.md)|[groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md) collection|List properties and relationships of the [groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md) objects.|
|[Get groupPolicyOperation](../api/intune-grouppolicy-grouppolicyoperation-get.md)|[groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md)|Read properties and relationships of the [groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md) object.|
|[Create groupPolicyOperation](../api/intune-grouppolicy-grouppolicyoperation-create.md)|[groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md)|Create a new [groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md) object.|
|[Delete groupPolicyOperation](../api/intune-grouppolicy-grouppolicyoperation-delete.md)|None|Deletes a [groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md).|
|[Update groupPolicyOperation](../api/intune-grouppolicy-grouppolicyoperation-update.md)|[groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md)|Update the properties of a [groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|operationType|[groupPolicyOperationType](../resources/intune-grouppolicy-grouppolicyoperationtype.md)|The type of group policy operation. Possible values are: `none`, `upload`, `uploadNewVersion`, `addLanguageFiles`, `removeLanguageFiles`, `updateLanguageFiles`, `remove`.|
|operationStatus|[groupPolicyOperationStatus](../resources/intune-grouppolicy-grouppolicyoperationstatus.md)|The group policy operation status. Possible values are: `unknown`, `inProgress`, `success`, `failed`.|
|statusDetails|String|The group policy operation status detail.|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyOperation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyOperation",
  "operationType": "String",
  "operationStatus": "String",
  "statusDetails": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```