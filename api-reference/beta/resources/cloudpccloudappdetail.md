---
title: "cloudPcCloudAppDetail resource type"
description: "Represents properties of a cloud app or a discovered app."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/12/2025
---

# cloudPcCloudAppDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents properties of a cloud app or a discovered app.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|commandLineArguments|String|Specifies the command-line arguments for the cloud app. These parameters are passed to the cloud app when it's launched. The maximum allowed length for this property is 2,048 characters. For example, `-fullscreen -loop`.|
|filePath|String|Specifies the path to the executable file for the application within the OS of the hosting Cloud PC. The value should be an absolute path to a Windows or Universal app. For example, `C:\app.exe` or `shell:AppsFolder\appname!App`. Read-only.|
|iconIndex|Int32|Specifies the index of the icon within the file specified by the **iconPath** property. For example, if **iconPath** is set to `C:\Program Files\MyApp\myapp.ico` and **iconIndex** is set to `0`, the system uses the first icon in the `myapp.ico` file. The default value is `0`.|
|iconPath|String|Specifies the path to the icon file for the application within the OS of the hosting Cloud PC. When an admin updates the path of a cloud app, the value should be a rooted absolute path. For example, `C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe`. If this property isn't defined, a default icon is used.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcCloudAppDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcCloudAppDetail",
  "commandLineArguments": "String",
  "filePath": "String",
  "iconIndex": "Int32",
  "iconPath": "String"
}
```
