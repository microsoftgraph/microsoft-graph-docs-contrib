---
title: "oAuth2ClientCredential resource type"
description: "Represents credentials that use OAuth 2.0 to authenticate to a resource."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# oAuth2ClientCredential resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents credentials that use OAuth 2.0 to authenticate to a resource.


Inherits from [microsoft.graph.industryData.oAuthClientCredential](../resources/industrydata-oauthclientcredential.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| clientId          | String         | The client identifier of the application that is authenticating. Inherited from [microsoft.graph.industryData.oAuthClientCredential](../resources/industrydata-oauthclientcredential.md).                    |
| clientSecret      | String         | The client secret that is used to authenticate (write-only). Inherited from [microsoft.graph.industryData.oAuthClientCredential](../resources/industrydata-oauthclientcredential.md).                |
| displayName       | String         | The name of the credential. Inherited from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md).                                                           |
| isValid           | Boolean        | Denotes if the credential provided is usable based on the last successful validation. Inherited from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md). |
| lastValidDateTime | DateTimeOffset | Time the credential was last successfully validated. Inherited from [microsoft.graph.industryData.credential](../resources/industrydata-credential.md).                                  |
| scope             | String         | OAuth scope provided to the authentication process.                                                                                                                                      |
| tokenUrl          | String         | The URL with which to retrieve the token after authentication happens.                                                                                                                              |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.oAuth2ClientCredential"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.oAuth2ClientCredential",
  "displayName": "String",
  "isValid": "Boolean",
  "lastValidDateTime": "String (timestamp)",
  "clientId": "String",
  "clientSecret": "String",
  "tokenUrl": "String",
  "scope": "String"
}
```

