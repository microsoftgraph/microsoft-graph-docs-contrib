---
title: "hostTracker resource type"
description: "Trackers are unique codes or values found within web pages and often used to track user interaction."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostTracker resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trackers are unique codes or values found within web pages and often used to track user interaction. These codes can be used to correlate a disparate group of websites to a central entity. Often, actors will copy the source code of a victim’s website they are looking to impersonate for a phishing campaign. Seldomly will actors take the time to remove these IDs that allow users to identify these fraudulent sites using Microsoft’s Trackers data set. Actors may also deploy tracker IDs to see how successful their cyber-attack campaigns are. This is similar to marketers when they leverage SEO IDs, such as a Google Analytics Tracker ID, to track the success of their marketing campaign.

These `HostTracker` Entities have specifically been observed against the related [microsoft.graph.security.host](../resources/security-host.md).


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get hostTracker](../api/security-hosttracker-get.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)|Read the properties and relationships of a [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time that this `hostTracker` was observed by Microsoft Threat Intelligence.|
|id|String| A system-generated id for this `hostTracker`.  Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|kind|String|The kind of hostTracker that was detected (e.g. GoogleAnalyticsID, JarmHash)|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this `hostTracker` was observed by Microsoft Threat Intelligence. |
|value|String|The identification value for the hostTracker|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|The [host](../resources/security-host.md) related to this `hostTracker`. When navigating to a `hostTracker` from a [host](../resources/security-host.md), this should be assumed to be a return reference.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostTracker",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostTracker",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "value": "String",
  "kind": "String"
}
```

