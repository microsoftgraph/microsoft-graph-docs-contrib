---
title: "depProfileDelayAutoRotationSetting resource type"
description: "Settings related to auto rotation of local admin account password after password retrieval through Graph. These are optional settings"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# depProfileDelayAutoRotationSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Settings related to auto rotation of local admin account password after password retrieval through Graph. These are optional settings

## Properties
|Property|Type|Description|
|:---|:---|:---|
|onRetrievalAutoRotatePasswordEnabled|Boolean|Indicates whether the admin account password should be rotated when retrieved by IT Admin through Intune.|
|onRetrievalDelayAutoRotatePasswordInHours|Int32|Indicates how long in hours (between 1 and 24 hours) after password retrieval through Graph should automatic rotation be initiated for the admin account password.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.depProfileDelayAutoRotationSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depProfileDelayAutoRotationSetting",
  "onRetrievalAutoRotatePasswordEnabled": true,
  "onRetrievalDelayAutoRotatePasswordInHours": 1024
}
```