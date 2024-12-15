---
title: "apiDataConnector resource type"
description: "Represents a base type for API connectors, which establish a connection to a data source that is available from an API."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 06/05/2024
---

# apiDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for API connectors, which establish a connection to a data source that is available from an API. This is an abstract type.

Inherits from [industryDataConnector](industrydata-industrydataconnector.md).

Base type of [oneRosterApiDataConnector](industrydata-oneRosterApiDataConnector.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| apiFormat   | microsoft.graph.industryData.apiFormat                                             | The API format of the external system being connected to. The possible values are: `oneRoster`, `unknownFutureValue`.                          |
| baseUrl     | String                                                                             | The base URL, including the scheme, host, and path for the API, with or without a trailing '/'. For example, "https://example.com/ims/oneRoster/v1p1"              |
| credential  | [microsoft.graph.industryData.credential](industrydata-credential.md) | A credential to use to connect to the API.                                                                                                               |
| displayName | String                                                                             | The name of the data connector. Inherited from [industryDataConnector](industrydata-industrydataconnector.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sourceSystem|[microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)|The **sourceSystemDefinition** object that this connector is connected to. Inherited from [industryDataConnector](industrydata-industrydataconnector.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.apiDataConnector",
  "baseType": "microsoft.graph.industryData.industryDataConnector",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.apiDataConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "apiFormat": "String",
  "baseUrl": "String",
  "credential": {
    "@odata.type": "microsoft.graph.industryData.credential"
  }
}
```

