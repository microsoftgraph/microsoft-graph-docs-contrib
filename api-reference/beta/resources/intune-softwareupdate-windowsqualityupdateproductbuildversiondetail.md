---
title: "windowsQualityUpdateProductBuildVersionDetail resource type"
description: "Represents the build version details of a product revision that is associated with a quality update."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateProductBuildVersionDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the build version details of a product revision that is associated with a quality update.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|majorVersionNumber|Int32|The major version of the product release, Allowed range is 0 - 2,147,483,647. For example: 10. Read-only.|
|minorVersionNumber|Int32|The minor version of the product release, Allowed range is 0 - 2,147,483,647. For example: 0. Read-only.|
|buildNumber|Int32|The build number of the product release, Allowed range is 0 - 2,147,483,647. For example: 19045. Read-only.|
|updateBuildRevision|Int32|The update build revision number of the product revision for the corresponding patch, Allowed range is 0 - 2,147,483,647. For example: 4780. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateProductBuildVersionDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateProductBuildVersionDetail",
  "majorVersionNumber": 1024,
  "minorVersionNumber": 1024,
  "buildNumber": 1024,
  "updateBuildRevision": 1024
}
```