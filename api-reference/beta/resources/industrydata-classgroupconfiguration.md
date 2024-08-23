---
title: "classGroupConfiguration resource type"
description: "The different configurations choices for the class groups to be provisioned with."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# classGroupConfiguration resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different configurations choices for the class groups to be provisioned with.

## Properties

| Property             | Type                                                                                                                 | Description                                                                  |
| :------------------- | :------------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------- |
| additionalAttributes | microsoft.graph.industryData.additionalClassGroupAttributes collection                                               | The different attributes to sync for the class groups. The possible values are: `courseTitle`, `courseCode`, `courseSubject`, `courseGradeLevel`, `courseExternalId`, `academicSessionTitle`, `academicSessionExternalId`, `classCode`, `unknownFutureValue`. |
| additionalOptions    | [microsoft.graph.industryData.additionalClassGroupOptions](../resources/industrydata-additionalclassgroupoptions.md) | The different options for the class groups to be provisioned with.            |
| enrollmentMappings   | [microsoft.graph.industryData.enrollmentMappings](../resources/industrydata-enrollmentmappings.md)                   | The different enrollmentMappings for the class groups to be provisioned with. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.classGroupConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.classGroupConfiguration",
  "additionalAttributes": ["String"],
  "additionalOptions": {
    "@odata.type": "microsoft.graph.industryData.additionalClassGroupOptions"
  },
  "enrollmentMappings": {
    "@odata.type": "microsoft.graph.industryData.enrollmentMappings"
  }
}
```
