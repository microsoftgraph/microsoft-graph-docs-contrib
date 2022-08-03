---
title: "organizationalMessageTargeting resource type"
description: "Contains the groups of devices that will be targeted to receive the organizational message. If a device is part of the excluded group, then it will not receive the message, regardless of the device being part of an included group"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageTargeting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the groups of devices that will be targeted to receive the organizational message. If a device is part of the excluded group, then it will not receive the message, regardless of the device being part of an included group

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetingType|[organizationalMessageTargetingType](../resources/intune-partnerintegration-organizationalmessagetargetingtype.md)|Indicates the type of targeting. Possible values are: `aadGroup`.|
|includeIds|String collection|The groups that will be targeted and receive the message|
|excludeIds|String collection|The groups that will not receive the message. If a user from an excluded group is part of an included group, it will not receive the message|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageTargeting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageTargeting",
  "targetingType": "String",
  "includeIds": [
    "String"
  ],
  "excludeIds": [
    "String"
  ]
}
```




