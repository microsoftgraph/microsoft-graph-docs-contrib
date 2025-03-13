---
title: "bookingCustomQuestion resource type"
description: "Represents a custom question for a bookingBusiness."
author: "razortbone"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# bookingCustomQuestion resource type

Namespace: microsoft.graph

Represents a custom question for a [bookingBusiness](bookingbusiness.md).

## Methods

| Method                                                                         | Return type                                                               | Description                                                                                                       |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------- |
| [List](../api/bookingbusiness-list-customquestions.md)  | [bookingCustomQuestion](../resources/bookingcustomquestion.md) collection | Get a list of the [bookingCustomQuestion](../resources/bookingcustomquestion.md) objects and their properties.    |
| [Create](../api/bookingbusiness-post-customquestions.md) | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Create a new [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                               |
| [Get](../api/bookingcustomquestion-get.md)               | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Read the properties and relationships of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object. |
| [Update](../api/bookingcustomquestion-update.md)         | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Update the properties of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                 |
| [Delete](../api/bookingcustomquestion-delete.md)         | None                                                                      | Delete a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                                  |

## Properties

| Property        | Type              | Description                                                                                               |
| :-------------- | :---------------- | :-------------------------------------------------------------------------------------------------------- |
| answerInputType | answerInputType   | The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`.     |
| answerOptions   | String collection | List of possible answer values.                                                                    |
| createdDateTime|DateTimeOffset|The date, time, and time zone when the custom question was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
| displayName     | String            | The question. |
| id              | String            | The ID of the custom question. Inherited from [entity](../resources/entity.md).                           |
| lastUpdatedDateTime|DateTimeOffset|The date, time, and time zone when the custom question was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingCustomQuestion",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.bookingCustomQuestion",
  "answerInputType": "String",
  "answerOptions": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```
