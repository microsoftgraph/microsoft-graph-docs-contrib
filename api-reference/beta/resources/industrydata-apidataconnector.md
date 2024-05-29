---
title: "apiDataConnector resource type"
description: "Represents an abstract type that provides the resources to establish a connection to an API-based data source."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# apiDataConnector resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type that provides the resources to establish a connection to an API-based data source.

Inherits from [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md).

Base type of [microsoft.graph.industryData.oneRosterApiDataConnector](industrydata-oneRosterApiDataConnector.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| apiFormat   | microsoft.graph.industryData.apiFormat                                             | API formats of external systems the industryDataHub can connect to..The possible values are: `oneRoster`, `unknownFutureValue`.                          |
| baseUrl     | String                                                                             | The base URL including the scheme, host, and path for the API (with or without a trailing '/'). Example: https://example.com/ims/oneRoster/              |
| credential  | [microsoft.graph.industryData.credential](industrydata-credential.md) | A credential to use to connect to the API.                                                                                                               |
| displayName | String                                                                             | The name of the data connector. Inherited from [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sourceSystem|[microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)|The **sourceSystemDefinition** this connector is connected to. Inherited from [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)|

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

