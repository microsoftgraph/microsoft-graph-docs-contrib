---
title: "termsExpiration resource type"
description: "Provides additional settings when setting the scheduled expiration of the agreement."
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
author: "raprakasMSFT"
doc_type: "resourcePageType"
---


# termsExpiration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides additional settings when setting the scheduled expiration of the agreement.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| startDateTime|DateTimeOffset | The DateTime when the agreement is set to expire for all users. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
| frequency| Duration | This represents the frequency at which the terms will expire, after its first expiration as set in 'startDateTime'. The value is represented in ISO 8601 format for durations. For example, 'PT1M' represents a time period of 1 month.|

## JSON representation

The following is a JSON representation of this resource.

```json
{
   "startDateTime": "2018-10-01T00:00:00.0000000Z",
   "frequency": "PT1M"
}
```
