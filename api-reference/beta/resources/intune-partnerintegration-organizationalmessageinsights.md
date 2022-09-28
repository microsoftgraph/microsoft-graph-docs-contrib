---
title: "organizationalMessageInsights resource type"
description: "Contains statistics into how the organizational message was interacted with by clients"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageInsights resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains statistics into how the organizational message was interacted with by clients

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impressions|Int32|The number of times this message was shown to all clients|
|clicks|Int32|The number of times this message was clicked on|
|dismisses|Int32|The number of times this message was dismissed by a user. This may not be collected for some surfaces and will be null|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageInsights"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageInsights",
  "impressions": 1024,
  "clicks": 1024,
  "dismisses": 1024
}
```






