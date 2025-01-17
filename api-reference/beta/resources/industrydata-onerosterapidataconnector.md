---
title: "oneRosterApiDataConnector resource type"
description: "Represents a connection to an OneRoster API data source."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 06/05/2024
---

# oneRosterApiDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a connection to an OneRoster API data source.


Inherits from [apiDataConnector](industrydata-apidataconnector.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create](../api/industrydata-onerosterapidataconnector-post.md)   | [microsoft.graph.industryData.oneRosterApiDataConnector](industrydata-onerosterapidataconnector.md)                         | Create a new **oneRosterApiDataConnector** object.                                                                         |
| [Update](../api/industrydata-onerosterapidataconnector-update.md) | [microsoft.graph.industryData.oneRosterApiDataConnector](industrydata-onerosterapidataconnector.md)            | Update the properties of a **oneRosterApiDataConnector** object.                 |

## Properties
|Property|Type|Description|
|:---|:---|:---|
| apiFormat             | microsoft.graph.industryData.apiFormat                                             | The API format of the external system being connected to. Inherited from [apiDataConnector](industrydata-apidataconnector.md).The possible values are: `oneRoster`, `unknownFutureValue`.           |
| apiVersion            | String                                                                             | The API version of the OneRoster source. Example: 1.1, 1.2                                                                                                                                                                                       |
| baseUrl               | String                                                                             | The base URL including the scheme, host, and path for the API (with or without a trailing '/'). Example: https://example.com/ims/oneRoster/v1p1. Inherited from [apiDataConnector](industrydata-apidataconnector.md). |
| credential            | [microsoft.graph.industryData.credential](industrydata-credential.md) | The base type for all supported credentials. Inherited from [apiDataConnector](industrydata-apidataconnector.md).                                                                    |
| displayName           | String                                                                             | The name of the data connector. Inherited from [industryDataConnector](industrydata-industrydataconnector.md).                                                                                                        |
| isContactsEnabled     | Boolean                                                                            | Indicates whether the user specified to import optional contacts data.                                                                                                                                                                                                |
| isDemographicsEnabled | Boolean                                                                            | Indicates whether the user specified to import optional demographics data.                                                                                                                                                                                            |
| isFlagsEnabled        | Boolean                                                                            | Indicates whether the user specified to import optional flags data.                                                                                                                                                                                                   |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| sourceSystem | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** object that this connector is connected to. Inherited from [industryDataConnector](industrydata-industrydataconnector.md) |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.oneRosterApiDataConnector",
  "baseType": "microsoft.graph.industryData.apiDataConnector",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "apiFormat": "String",
  "baseUrl": "String",
  "credential": {
    "@odata.type": "microsoft.graph.industryData.credential"
  },
  "apiVersion": "String",
  "isDemographicsEnabled": "Boolean",
  "isFlagsEnabled": "Boolean",
  "isContactsEnabled": "Boolean"
}
```

