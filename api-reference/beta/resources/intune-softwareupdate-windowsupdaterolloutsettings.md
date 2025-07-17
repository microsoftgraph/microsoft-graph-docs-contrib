---
title: "windowsUpdateRolloutSettings resource type"
description: "A complex type to store the windows update rollout settings including offer start date time, offer end date time, and days between each set of offers."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsUpdateRolloutSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store the windows update rollout settings including offer start date time, offer end date time, and days between each set of offers.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|offerStartDateTimeInUTC|DateTimeOffset|The feature update's starting date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.|
|offerEndDateTimeInUTC|DateTimeOffset|The feature update's ending  of release date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.|
|offerIntervalInDays|Int32|The number of day(s) between each set of offers to be set, updated, and displayed for a feature update profile, for example: if OfferStartDateTimeInUTC is 2020-06-09T10:00:00Z, and OfferIntervalInDays is 1, then the next two sets of offers will be made consecutively on 2020-06-10T10:00:00Z (next day at the same specified time) and 2020-06-11T10:00:00Z (next next day at the same specified time) with 1 day in between each set of offers.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdateRolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdateRolloutSettings",
  "offerStartDateTimeInUTC": "String (timestamp)",
  "offerEndDateTimeInUTC": "String (timestamp)",
  "offerIntervalInDays": 1024
}
```