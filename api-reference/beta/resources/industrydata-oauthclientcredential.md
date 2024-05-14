---
title: "oAuthClientCredential resource type"
description: "Base abstract type for credentials using one of the OAuth versions and flows to authenticate to a resource."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# oAuthClientCredential resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for credentials using one of the OAuth versions and flows to authenticate to a resource. This is an abstract type.


Inherits from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| clientId          | String         | Client id of the application authenticating.                                                                                                                                             |
| clientSecret      | String         | Client secret used to authenticate (write-only).                                                                                                                                         |
| displayName       | String         | The name of the credential. Inherited from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md).                                                           |
| isValid           | Boolean        | Denotes if the credential provided is usable based on the last successful validation. Inherited from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md). |
| lastValidDateTime | DateTimeOffset | Time the credential was last successfully validated. Inherited from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md).                                  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.oAuthClientCredential"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.oAuthClientCredential",
  "displayName": "String",
  "isValid": "Boolean",
  "lastValidDateTime": "String (timestamp)",
  "clientId": "String",
  "clientSecret": "String"
}
```

