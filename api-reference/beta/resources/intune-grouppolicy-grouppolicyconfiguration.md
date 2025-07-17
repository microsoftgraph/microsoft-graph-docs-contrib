---
title: "groupPolicyConfiguration resource type"
description: "The group policy configuration entity contains the configured values for one or more group policy definitions."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# groupPolicyConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The group policy configuration entity contains the configured values for one or more group policy definitions.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyConfigurations](../api/intune-grouppolicy-grouppolicyconfiguration-list.md)|[groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md) collection|List properties and relationships of the [groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md) objects.|
|[Get groupPolicyConfiguration](../api/intune-grouppolicy-grouppolicyconfiguration-get.md)|[groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md)|Read properties and relationships of the [groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md) object.|
|[Create groupPolicyConfiguration](../api/intune-grouppolicy-grouppolicyconfiguration-create.md)|[groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md)|Create a new [groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md) object.|
|[Delete groupPolicyConfiguration](../api/intune-grouppolicy-grouppolicyconfiguration-delete.md)|None|Deletes a [groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md).|
|[Update groupPolicyConfiguration](../api/intune-grouppolicy-grouppolicyconfiguration-update.md)|[groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md)|Update the properties of a [groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md) object.|
|[assign action](../api/intune-grouppolicy-grouppolicyconfiguration-assign.md)|[groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) collection||
|[updateDefinitionValues action](../api/intune-grouppolicy-grouppolicyconfiguration-updatedefinitionvalues.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time the object was created.|
|displayName|String|User provided name for the resource object.|
|description|String|User provided description for the resource object.|
|roleScopeTagIds|String collection|The list of scope tags for the configuration.|
|policyConfigurationIngestionType|[groupPolicyConfigurationIngestionType](../resources/intune-grouppolicy-grouppolicyconfigurationingestiontype.md)|Type of definitions configured for this policy. Possible values are: `unknown`, `custom`, `builtIn`, `mixed`, `unknownFutureValue`.|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitionValues|[groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md) collection|The list of enabled or disabled group policy definition values for the configuration.|
|assignments|[groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) collection|The list of group assignments for the configuration.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyConfiguration",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "policyConfigurationIngestionType": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```