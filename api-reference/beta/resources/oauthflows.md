---
title: "oAuthFlows resource type"
description: "Allows configuration of the supported OAuth Flows."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# oAuthFlows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows configuration of the supported OAuth Flows for an [OAuth 2.0 security scheme](../resources/oauth2securityscheme.md) used for authenticating API requests.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationCode|[oAuthFlow](../resources/oauthflow.md)|Configuration for the OAuth Authorization Code flow.|
|clientCredentials|[oAuthFlow](../resources/oauthflow.md)|Configuration for the OAuth Client Credentials flow.|
|implicit|[oAuthFlow](../resources/oauthflow.md)|Configuration for the OAuth Implicit flow|
|password|[oAuthFlow](../resources/oauthflow.md)|Configuration for the OAuth Resource Owner Password flow|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuthFlows"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuthFlows",
  "implicit": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  },
  "password": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  },
  "clientCredentials": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  },
  "authorizationCode": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  }
}
```

