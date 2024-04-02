---
title: "enrollmentMappings resource type"
description: "The different management choices for the class groups to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# enrollmentMappings resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different management choices for the class groups to be provisioned.

## Properties

| Property                 | Type                                                                                                                        | Description                                       |
| :----------------------- | :-------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------ |
| memberEnrollmentMappings | [microsoft.graph.industryData.sectionRoleReferenceValue](../resources/industrydata-sectionrolereferencevalue.md) collection | The member enrollmentMappings for the class group.  |
| ownerEnrollmentMappings  | [microsoft.graph.industryData.sectionRoleReferenceValue](../resources/industrydata-sectionrolereferencevalue.md) collection | The owner enrollmentMappings for the class group. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.enrollmentMappings"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.enrollmentMappings",
  "ownerEnrollmentMappings": [
    {
      "@odata.type": "microsoft.graph.industryData.sectionRoleReferenceValue"
    }
  ],
  "memberEnrollmentMappings": [
    {
      "@odata.type": "microsoft.graph.industryData.sectionRoleReferenceValue"
    }
  ]
}
```
