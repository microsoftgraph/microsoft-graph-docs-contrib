---
title: "hostTracker resource type"
description: "Represents a unique code or value found within web pages and often used to track user interaction."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostTracker resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unique code or value found within web pages and often used to track user interaction. These codes can be used to correlate a disparate group of websites to a central entity. Often, actors copy the source code of a victim’s website they want to impersonate for a phishing campaign. Seldomly, actors take the time to remove these IDs. Actors might also deploy tracker IDs to see how successful their cyberattack campaigns are. This is similar to marketers using SEO IDs, such as a Google Analytics Tracker ID, to track the success of their marketing campaign.

The **hostTracker** is associated with a [host](../resources/security-host.md) resource.

Inherits from [artifact](../resources/security-artifact.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get hostTracker](../api/security-hosttracker-get.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)|Read the properties and relationships of a [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time when this **hostTracker** was observed by Microsoft Defender Threat Intelligence. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String| A system-generated ID for this **hostTracker**.  Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|kind|String|The kind of **hostTracker** that was detected. For example, `GoogleAnalyticsID` or `JarmHash`.|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this **hostTracker** was observed by Microsoft Defender Threat Intelligence. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|value|String|The identification value for the **hostTracker**.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The [host](../resources/security-host.md) related to this **hostTracker**. When navigating to a **hostTracker** from a [host](../resources/security-host.md), this should be assumed to be a return reference.|

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
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "kind": "String",
  "lastSeenDateTime": "String (timestamp)",
  "value": "String"
}
```
