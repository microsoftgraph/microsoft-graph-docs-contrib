---
title: "oneRosterApiDataConnector resource type"
description: "Represents a way to connect to an OneRoster API data source."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# oneRosterApiDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a way to connect to an OneRoster API data source.


Inherits from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create oneRosterApiDataConnector](../api/industrydata-onerosterapidataconnector-post.md)   | [microsoft.graph.industryData.onerosterapidataconnector](industrydata-onerosterapidataconnector.md)                         | Create a new [onerosterapidataconnector](industrydata-onerosterapidataconnector.md) object.                                                                         |
| [Update oneRosterApiDataConnector](../api/industrydata-onerosterapidataconnector-update.md) | [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md)            | Update the properties of a [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object.                 |

## Properties
|Property|Type|Description|
|:---|:---|:---|
| apiFormat             | microsoft.graph.industryData.apiFormat                                             | API format of external systems that the industryDataHub can connect to. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md).The possible values are: `oneRoster`, `unknownFutureValue`.           |
| apiVersion            | String                                                                             | Represents the API version of the OneRoster source. Example: 1.1, 1.2                                                                                                                                                                                       |
| baseUrl               | String                                                                             | The base URL including the scheme, host, and path for the API (with or without a trailing '/'). Example: https://example.com/ims/oneRoster/. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). |
| credential            | [microsoft.graph.industryData.credential](../resources/industrydata-credential.md) | Base type for all kinds of credentials supported in the industryData API. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md).                                                                    |
| displayName           | String                                                                             | Name of the data connector. Inherited from [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md).                                                                                                        |
| isContactsEnabled     | Boolean                                                                            | Represents user preference to import optional contacts data.                                                                                                                                                                                                |
| isDemographicsEnabled | Boolean                                                                            | Represents user preference to import optional demographics data.                                                                                                                                                                                            |
| isFlagsEnabled        | Boolean                                                                            | Represents user preference to import optional flags data.                                                                                                                                                                                                   |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| sourceSystem | [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) | The **sourceSystemDefinition** this connector is connected to. Inherited from [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) |

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

