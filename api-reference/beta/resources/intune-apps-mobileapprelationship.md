---
title: "mobileAppRelationship resource type"
description: "Describes a relationship between two mobile apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# mobileAppRelationship resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes a relationship between two mobile apps.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppRelationships](../api/intune-apps-mobileapprelationship-list.md)|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|List properties and relationships of the [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) objects.|
|[Get mobileAppRelationship](../api/intune-apps-mobileapprelationship-get.md)|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|Read properties and relationships of the [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the mobile app relationship entity. Read-Only.|
|targetId|String|App ID of the app that is the target of the mobile app relationship entity. Read-Only|
|targetDisplayName|String|The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.|
|targetDisplayVersion|String|The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.|
|targetPublisher|String|The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.|
|targetType|[mobileAppRelationshipType](../resources/intune-apps-mobileapprelationshiptype.md)|The type of relationship indicating whether the target application of a relationship is a parent or child in the relationship. Possible values are: parent, child. Read-Only. This property is read-only. Possible values are: `child`, `parent`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppRelationship"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppRelationship",
  "id": "String (identifier)",
  "targetId": "String",
  "targetDisplayName": "String",
  "targetDisplayVersion": "String",
  "targetPublisher": "String",
  "targetType": "String"
}
```
