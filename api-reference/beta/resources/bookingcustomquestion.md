---
title: "bookingCustomQuestion resource type"
description: "Represents a custom question for a bookingBusiness."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingCustomQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom question for a [bookingBusiness](bookingbusiness.md).

Inherits from [bookingNamedEntity](../resources/bookingnamedentity.md).

## Methods

| Method                                                                         | Return type                                                               | Description                                                                                                       |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------- |
| [List bookingCustomQuestions](../api/bookingbusiness-list-customquestions.md)            | [bookingCustomQuestion](../resources/bookingcustomquestion.md) collection | Get a list of the [bookingCustomQuestion](../resources/bookingcustomquestion.md) objects and their properties.    |
| [Create bookingCustomQuestion](../api/bookingbusiness-post-customquestions.md) | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Create a new [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                               |
| [Get bookingCustomQuestion](../api/bookingcustomquestion-get.md)               | [bookingCustomQuestion](../resources/bookingcustomquestion.md)            | Read the properties and relationships of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object. |
| [Update bookingCustomQuestion](../api/bookingcustomquestion-update.md)         | None     | Update the properties of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                 |
| [Delete bookingCustomQuestion](../api/bookingcustomquestion-delete.md)         | None                                                                      | Delete a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.                                  |

## Properties

| Property        | Type              | Description                                                                                               |
| :-------------- | :---------------- | :-------------------------------------------------------------------------------------------------------- |
| answerInputType | answerInputType   | The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`.     |
| answerOptions   | String collection | List of possible answer values.                                                                    |
| displayName     | String            | The question. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md). |
| id              | String            | The ID of the custom question. Inherited from [entity](../resources/entity.md).                           |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
  "displayName": "String",
  "answerInputType": {"@odata.type": "microsoft.graph.answerInputType"},
  "answerOptions": ["String"]
}
```
