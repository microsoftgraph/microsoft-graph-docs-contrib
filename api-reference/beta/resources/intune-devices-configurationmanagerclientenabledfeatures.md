---
title: "configurationManagerClientEnabledFeatures resource type"
description: "configuration Manager client enabled features"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# configurationManagerClientEnabledFeatures resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

configuration Manager client enabled features

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inventory|Boolean|Whether inventory is managed by Intune|
|modernApps|Boolean|Whether modern application is managed by Intune|
|resourceAccess|Boolean|Whether resource access is managed by Intune|
|deviceConfiguration|Boolean|Whether device configuration is managed by Intune|
|compliancePolicy|Boolean|Whether compliance policy is managed by Intune|
|windowsUpdateForBusiness|Boolean|Whether Windows Update for Business is managed by Intune|
|endpointProtection|Boolean|Whether Endpoint Protection is managed by Intune|
|officeApps|Boolean|Whether Office application is managed by Intune|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationManagerClientEnabledFeatures"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagerClientEnabledFeatures",
  "inventory": true,
  "modernApps": true,
  "resourceAccess": true,
  "deviceConfiguration": true,
  "compliancePolicy": true,
  "windowsUpdateForBusiness": true,
  "endpointProtection": true,
  "officeApps": true
}
```