---
title: "apiAuthenticationConfigurationBase resource type"
description: "Represents the base type of authentication configuration used for calling an API."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# apiAuthenticationConfigurationBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base type to hold authentication information for calling an API.

Derived types include:
- [basicAuthentication](basicauthentication.md) for HTTP basic authentication
- [pkcs12certificate](pkcs12certificate.md) for client certificate authentication (used for API connector create or upload)
- [clientCertificateAuthentication](pkcs12certificate.md) for client certificate authentication (used for fetching the client certificates of an API connector)

## Properties

|Property|Type|Description|
|:---|:---|:---|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.apiAuthenticationConfigurationBase"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.apiAuthenticationConfigurationBase"
}
```
