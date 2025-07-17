---
title: "bookingCustomQuestion resource type"
description: "Represents a custom question for a bookingBusiness."
author: "razortbone"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# bookingCustomQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom question for a [bookingBusiness](bookingbusiness.md).

Inherits from [bookingNamedEntity](../resources/bookingnamedentity.md).

## Methods

| Method                                                                         | Return type                                                               | Description                                                                                                       |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------- |
| [List](../api/bookingbusiness-list-customquestions.md)            | [bookingCustomQuestion](../resources/bookingcustomquestion.md) collection | Get a list of the [bookingCustomQuestion](../resources/bookingcustomquestion.md) objects and their properties.    |
| [Create](../api/bookingbusiness-post-customquestions.md) | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Create a new [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                               |
| [Get](../api/bookingcustomquestion-get.md)               | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Read the properties and relationships of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object. |
| [Update](../api/bookingcustomquestion-update.md)         | None     | Update the properties of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                 |
| [Delete](../api/bookingcustomquestion-delete.md)         | None                                                                      | Delete a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                                  |

## Properties

| Property        | Type              | Description                                                                                               |
| :-------------- | :---------------- | :-------------------------------------------------------------------------------------------------------- |
| answerInputType | answerInputType   | The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`.     |
| answerOptions   | String collection | List of possible answer values.                                                                    |
| createdDateTime|DateTimeOffset|The date, time and timezone when the custom question was created.|
| displayName     | String            | The question. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md). |
| id              | String            | The ID of the custom question. Inherited from [entity](../resources/entity.md).                           |
| lastUpdatedDateTime|DateTimeOffset|The date, time and timezone when the custom question was last updated.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingCustomQuestion",
  "baseType": "microsoft.graph.bookingNamedEntity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.bookingCustomQuestion",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "displayName": "String",
  "answerInputType": "String",
  "answerOptions": [
    "String"
  ]
}
```
