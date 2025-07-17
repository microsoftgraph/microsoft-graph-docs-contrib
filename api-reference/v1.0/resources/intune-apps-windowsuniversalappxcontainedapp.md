---
title: "windowsUniversalAppXContainedApp resource type"
description: "A class that represents a contained app of a WindowsUniversalAppX app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# windowsUniversalAppXContainedApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class that represents a contained app of a WindowsUniversalAppX app.


Inherits from [mobileContainedApp](../resources/intune-apps-mobilecontainedapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsUniversalAppXContainedApps](../api/intune-apps-windowsuniversalappxcontainedapp-list.md)|[windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md) collection|List properties and relationships of the [windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md) objects.|
|[Get windowsUniversalAppXContainedApp](../api/intune-apps-windowsuniversalappxcontainedapp-get.md)|[windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md)|Read properties and relationships of the [windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md) object.|
|[Create windowsUniversalAppXContainedApp](../api/intune-apps-windowsuniversalappxcontainedapp-create.md)|[windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md)|Create a new [windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md) object.|
|[Delete windowsUniversalAppXContainedApp](../api/intune-apps-windowsuniversalappxcontainedapp-delete.md)|None|Deletes a [windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md).|
|[Update windowsUniversalAppXContainedApp](../api/intune-apps-windowsuniversalappxcontainedapp-update.md)|[windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md)|Update the properties of a [windowsUniversalAppXContainedApp](../resources/intune-apps-windowsuniversalappxcontainedapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileContainedApp](../resources/intune-apps-mobilecontainedapp.md)|
|appUserModelId|String|The app user model ID of the contained app of a WindowsUniversalAppX app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUniversalAppXContainedApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUniversalAppXContainedApp",
  "id": "String (identifier)",
  "appUserModelId": "String"
}
```
