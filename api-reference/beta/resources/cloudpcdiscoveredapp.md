---
title: "cloudPcDiscoveredApp resource type"
description: "Represents a defined collection of discovered app which app details can be used to create cloud app."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/12/2025
---

# cloudPcDiscoveredApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of discovered app which app details can be used to create cloud app.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|discoveredAppId |String| The unique identifier of the discovered app.  Read-only.|
|appName |String| The name of the discovered app; for example, "Paint". Read-only.  | 
|appDetail |[cloudPcCloudAppDetail](../resources/cloudpccloudapp.md#cloudpccloudappdetail-values) | Specifies the details of the discovered app. Read-only.| 
|sourceId |String | Specifies the ID of the source of the discovered app. For example, if the source is a custom device image, the sourceId value is the id of the image. For example: "3035e17f-c0f7-49c1-9502-5990afcaf86f". Read-only. |

### cloudPcCloudAppDetail values

|Member|Type|Description|
|:---|:---|:---|
|filePath|String| Specifies the path to the executable file for the application within the OS of the hosting Cloud PC. The value should be an absolute path to a Windows or universal app, for example: "C:\app.exe" or "shell:AppsFolder\appname!App".  Read-only. |
|iconPath|String| Specifies a path to the icon file for the application within the OS of the hosting Cloud PC.  When admin update the path of one cloud app, the value should be a rooted absolute path, for example: "C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe". When the property value is not defined, this property will be set with default icon.  |
|iconIndex|Int32| Specifies the index of the icon within the file specified by the iconPath property. For example, if the iconPath is set to "C:\\Program Files\\MyApp\\myapp.ico", and the iconIndex is set to 0, the system will use the first icon in the myapp.ico file.  The default value is 0.  |
|commandLineArguments|String| Specifies the command-line arguments for the Cloud App. These parameters are passed to the Cloud App when it is launched. The maximum allowed length for this property is 2048. For example, "-fullscreen -loop".  |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDiscoveredApp"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDiscoveredApp",
  "discoveredAppId": "String",
  "appName": "String",
  "appDetail": {
    "@odata.type": "microsoft.graph.cloudPcCloudAppDetail"
  },
  "sourceId": "String"
}
```
