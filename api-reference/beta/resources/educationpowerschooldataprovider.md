---
title: educationPowerSchoolDataProvider resource type (deprecated)
description: "Used to set up the school data synchronization profile when PowerSchool is used as the input source."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationPowerSchoolDataProvider resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Used to set up the school data synchronization profile when [PowerSchool](https://www.powerschool.com/solutions/student-information-system-sis/) is used as the input source.

Derived from [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md).

## Properties

| Property                       | Type                                     | Description                                                                            |
| :----------------------------- | :--------------------------------------- | :------------------------------------------------------------------------------------- |
| allowTeachersInMultipleSchools | Boolean                                  | Indicates whether the source has multiple identifiers for a single student or teacher. |
| clientId                       | String                                   | The client ID used to connect to PowerSchool.                                          |
| clientSecret                   | String                                   | The client secret to authenticate the connection to the PowerSchool instance.          |
| connectionUrl                  | String                                   | The connection URL to the PowerSchool instance.                                        |
| schoolsIds                     | String collection                        | The list of schools to sync.                                                           |
| schoolYear                     | String                                   | The school year to sync.                                                               |
| customizations                 | [educationSynchronizationCustomizations] | Optional customization to be applied to the synchronization profile.                   |

[educationsynchronizationconnectionsettings]: educationsynchronizationconnectionsettings.md
[educationsynchronizationcustomizations]: educationsynchronizationcustomizations.md

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationPowerSchoolDataProvider"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationPowerSchoolDataProvider",
  "connectionUrl": "String",
  "clientId": "String",
  "clientSecret": "String",
  "schoolsIds": ["String"],
  "schoolYear": "String",
  "allowTeachersInMultipleSchools": "Boolean",
  "customizations": {
    "@odata.type": "microsoft.graph.educationSynchronizationCustomizations"
  }
}
```


