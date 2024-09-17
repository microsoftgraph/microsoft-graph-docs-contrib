---
title: "mobileAppSupersedence resource type"
description: "Describes a supersedence relationship between two mobile apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# mobileAppSupersedence resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes a supersedence relationship between two mobile apps.


Inherits from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppSupersedences](../api/intune-apps-mobileappsupersedence-list.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) collection|List properties and relationships of the [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) objects.|
|[Get mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-get.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md)|Read properties and relationships of the [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) object.|
|[Create mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-create.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md)|Create a new [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) object.|
|[Delete mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-delete.md)|None|Deletes a [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md).|
|[Update mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-update.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md)|Update the properties of a [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the mobile app relationship entity. Read-Only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetId|String|App ID of the app that is the target of the mobile app relationship entity. Read-Only Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayName|String|The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayVersion|String|The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetPublisher|String|The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetType|[mobileAppRelationshipType](../resources/intune-apps-mobileapprelationshiptype.md)|The type of relationship indicating whether the target application of a relationship is a parent or child in the relationship. Possible values are: parent, child. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md). Possible values are: `child`, `parent`, `unknownFutureValue`.|
|supersedenceType|[mobileAppSupersedenceType](../resources/intune-apps-mobileappsupersedencetype.md)|The supersedence relationship type between the parent and child apps. Possible values are: update, replace. Read-Only. Possible values are: `update`, `replace`, `unknownFutureValue`.|
|supersededAppCount|Int32|The total number of apps directly or indirectly superseded by the child app. Read-Only. This property is read-only.|
|supersedingAppCount|Int32|The total number of apps directly or indirectly superseding the parent app. Read-Only. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppSupersedence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppSupersedence",
  "id": "String (identifier)",
  "targetId": "String",
  "targetDisplayName": "String",
  "targetDisplayVersion": "String",
  "targetPublisher": "String",
  "targetType": "String",
  "supersedenceType": "String",
  "supersededAppCount": 1024,
  "supersedingAppCount": 1024
}
```
