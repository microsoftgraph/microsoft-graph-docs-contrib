---
title: "mobileAppDependency resource type"
description: "Describes a dependency type between two mobile apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# mobileAppDependency resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes a dependency type between two mobile apps.


Inherits from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppDependencies](../api/intune-apps-mobileappdependency-list.md)|[mobileAppDependency](../resources/intune-apps-mobileappdependency.md) collection|List properties and relationships of the [mobileAppDependency](../resources/intune-apps-mobileappdependency.md) objects.|
|[Get mobileAppDependency](../api/intune-apps-mobileappdependency-get.md)|[mobileAppDependency](../resources/intune-apps-mobileappdependency.md)|Read properties and relationships of the [mobileAppDependency](../resources/intune-apps-mobileappdependency.md) object.|
|[Create mobileAppDependency](../api/intune-apps-mobileappdependency-create.md)|[mobileAppDependency](../resources/intune-apps-mobileappdependency.md)|Create a new [mobileAppDependency](../resources/intune-apps-mobileappdependency.md) object.|
|[Delete mobileAppDependency](../api/intune-apps-mobileappdependency-delete.md)|None|Deletes a [mobileAppDependency](../resources/intune-apps-mobileappdependency.md).|
|[Update mobileAppDependency](../api/intune-apps-mobileappdependency-update.md)|[mobileAppDependency](../resources/intune-apps-mobileappdependency.md)|Update the properties of a [mobileAppDependency](../resources/intune-apps-mobileappdependency.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the mobile app relationship entity. Read-Only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetId|String|App ID of the app that is the target of the mobile app relationship entity. Read-Only Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayName|String|The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayVersion|String|The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetPublisher|String|The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetType|[mobileAppRelationshipType](../resources/intune-apps-mobileapprelationshiptype.md)|The type of relationship indicating whether the target application of a relationship is a parent or child in the relationship. Possible values are: parent, child. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md). Possible values are: `child`, `parent`, `unknownFutureValue`.|
|dependencyType|[mobileAppDependencyType](../resources/intune-apps-mobileappdependencytype.md)|The type of dependency relationship between the parent and child apps. Possible values are: detect, autoInstall. Read-Only. Possible values are: `detect`, `autoInstall`, `unknownFutureValue`.|
|dependentAppCount|Int32|The total number of apps that directly or indirectly depend on the parent app. Read-Only. This property is read-only.|
|dependsOnAppCount|Int32|The total number of apps the child app directly or indirectly depends on. Read-Only. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppDependency"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppDependency",
  "id": "String (identifier)",
  "targetId": "String",
  "targetDisplayName": "String",
  "targetDisplayVersion": "String",
  "targetPublisher": "String",
  "targetType": "String",
  "dependencyType": "String",
  "dependentAppCount": 1024,
  "dependsOnAppCount": 1024
}
```
