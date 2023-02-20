---
title: "customExtensionStageSetting resource type"
description: "Defines the configuration of when to execute pre-defined custom extension and store the relationship in entity `accessPackageCustomExtensionStage`."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "vikama-microsoft"
doc_type: resourcePageType
---

# customExtensionStageSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the configuration of when to execute pre-defined custom extension and store the relationship in entity `accessPackageCustomExtensionStage`.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customExtensionStageSettings](../api/accesspackageassignmentpolicy-list-customextensionstagesettings.md)|[customExtensionStageSetting](../resources/customextensionstagesetting.md) collection|Get a list of the [customExtensionStageSetting](../resources/customextensionstagesetting.md) objects and their properties.|
|[Create customExtensionStageSetting](../api/accesspackageassignmentpolicy-post-customextensionstagesettings.md)|[customExtensionStageSetting](../resources/customextensionstagesetting.md)|Create a new [customExtensionStageSetting](../resources/customextensionstagesetting.md) object.|
|[Get customExtensionStageSetting](../api/customextensionstagesetting-get.md)|[customExtensionStageSetting](../resources/customextensionstagesetting.md)|Read the properties and relationships of a [customExtensionStageSetting](../resources/customextensionstagesetting.md) object.|
|[Update customExtensionStageSetting](../api/customextensionstagesetting-update.md)|[customExtensionStageSetting](../resources/customextensionstagesetting.md)|Update the properties of a [customExtensionStageSetting](../resources/customextensionstagesetting.md) object.|
|[Delete customExtensionStageSetting](../api/accesspackageassignmentpolicy-delete-customextensionstagesettings.md)|None|Delete a [customExtensionStageSetting](../resources/customextensionstagesetting.md) object.|
|[List customCalloutExtension](../api/customextensionstagesetting-list-customextension.md)|[customCalloutExtension](../resources/customcalloutextension.md) collection|Get the customCalloutExtension resources from the customExtension navigation property.|
|[Add customCalloutExtension](../api/customextensionstagesetting-post-customextension.md)|[customCalloutExtension](../resources/customcalloutextension.md)|Add customExtension by posting to the customExtension collection.|
|[Remove customCalloutExtension](../api/customextensionstagesetting-delete-customextension.md)|None|Remove a [customCalloutExtension](../resources/customcalloutextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Identification for custom extension stage. Inherited from [entity](../resources/entity.md).|
|stage|accessPackageCustomExtensionStage|Indicate at which stage the custom action will be executed..The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[customCalloutExtension](../resources/customcalloutextension.md)|Indicate which custom extension will be executed at this stage.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customExtensionStageSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionStageSetting",
  "id": "String (identifier)",
  "stage": "String"
}
```

