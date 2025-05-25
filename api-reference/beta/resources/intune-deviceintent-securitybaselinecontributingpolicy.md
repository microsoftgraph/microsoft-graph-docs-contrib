---
title: "securityBaselineContributingPolicy resource type"
description: "The security baseline compliance state of a setting for a device"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# securityBaselineContributingPolicy resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The security baseline compliance state of a setting for a device

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sourceId|String|Unique identifier of the policy|
|displayName|String|Name of the policy|
|sourceType|[securityBaselinePolicySourceType](../resources/intune-deviceintent-securitybaselinepolicysourcetype.md)|Authoring source of the policy. Possible values are: `deviceConfiguration`, `deviceIntent`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.securityBaselineContributingPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityBaselineContributingPolicy",
  "sourceId": "String",
  "displayName": "String",
  "sourceType": "String"
}
```