---
title: "educationSynchronizationDataProvider resource type (deprecated)"
description: "Represents the source SIS schema. This allows the system to know how to map the incoming data to the Microsoft Entra schema. "
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationSynchronizationDataProvider resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Represents the data provider to use as the synchronization source for a [educationSynchronizationProfile].

> [!NOTE]
> This complex type is abstract. Refer to the specific types of data providers listed.


**Providers**

| Data Provider                                                             | Description                                                                                        |
| :------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------- |
| [educationCsvDataProvider]                                                | CSV files uploaded to the Profile's [SAS URL](../api/educationsynchronizationprofile-uploadurl.md) |
| [educationOneRosterApiDataProvider](educationonerosterapidataprovider.md) | OneRoster v1.1 API                                                                                 |
| [educationPowerSchoolDataProvider]                                        | PowerSchool API                                                                                    |

## Properties

None.

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSynchronizationDataProvider"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationSynchronizationDataProvider"
}
```


[educationsynchronizationprofile]: educationsynchronizationprofile.md
[educationcsvdataprovider]: educationCsvDataProvider.md
[educationsynchronizationdataprovider]: educationSynchronizationDataProvider.md
[educationpowerschooldataprovider]: educationPowerSchoolDataProvider.md
[educationcsvdataprovider]: educationCsvDataProvider.md
