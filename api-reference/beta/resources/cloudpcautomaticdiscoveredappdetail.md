---
title: "cloudPcAutomaticDiscoveredAppDetail resource type"
description: "Represents properties of a cloud app that was automatically discovered from the start menu."
author: "chyouchyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 02/12/2026
---

# cloudPcAutomaticDiscoveredAppDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents properties of a [cloud app](../resources/cloudpccloudapp.md) that was automatically discovered from the *start* menu. 

Inherits from [cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|commandLineArguments|String|Specifies the command-line arguments for the cloud app. These parameters are passed to the cloud app when it's launched. The maximum allowed length for this property is 2,048 characters. For example, `-fullscreen -loop`. Inherited from [cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md).|
|filePath|String|Specifies the path to the executable file for the application within the operating system of the hosting Cloud PC. The value should be an absolute path to a Windows or Universal app. For example, `C:\app.exe` or `shell:AppsFolder\appname!App`. Inherited from [cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md).|
|iconIndex|Int32|Specifies the index of the icon within the file specified by the **iconPath** property. The default value is `0`. Inherited from [cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md).|
|iconPath|String|Specifies the path to the icon file for the application within the operating system of the hosting Cloud PC. Inherited from [cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAutomaticDiscoveredAppDetail",
  "baseType": "microsoft.graph.cloudPcCloudAppDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAutomaticDiscoveredAppDetail",
  "commandLineArguments": "String",
  "filePath": "String",
  "iconIndex": "Int32",
  "iconPath": "String"
}
```
