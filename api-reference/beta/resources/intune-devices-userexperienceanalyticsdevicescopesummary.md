---
title: "userExperienceAnalyticsDeviceScopeSummary resource type"
description: "The user experience analytics tenant level information for all the device scope configurations"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsDeviceScopeSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics tenant level information for all the device scope configurations

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalDeviceScopes|Int32|The total number of user experience analytics device scopes. Valid values -2147483648 to 2147483647|
|totalDeviceScopesEnabled|Int32|The total number of user experience analytics device scopes that are enabled. Valid values -2147483648 to 2147483647|
|completedDeviceScopeIds|String collection|A collection of the user experience analytics device scope Unique Identifiers that are enabled and finished recalculating the report metric.|
|insufficientDataDeviceScopeIds|String collection|A collection of user experience analytics device scope Unique Identitfiers that are enabled but there is insufficient data to calculate results.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceScopeSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceScopeSummary",
  "totalDeviceScopes": 1024,
  "totalDeviceScopesEnabled": 1024,
  "completedDeviceScopeIds": [
    "String"
  ],
  "insufficientDataDeviceScopeIds": [
    "String"
  ]
}
```