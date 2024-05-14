---
title: "deviceAppManagement resource type"
description: "Singleton entity that acts as a container for all device app management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceAppManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device app management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceAppManagement](../api/intune-books-deviceappmanagement-get.md)|[deviceAppManagement](../resources/intune-shared-deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune-books-deviceappmanagement-update.md)|[deviceAppManagement](../resources/intune-shared-deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedEBooks|[managedEBook](../resources/intune-books-managedebook.md) collection|The Managed eBook.|
|managedEBookCategories|[managedEBookCategory](../resources/intune-books-managedebookcategory.md) collection|The mobile eBook categories.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```