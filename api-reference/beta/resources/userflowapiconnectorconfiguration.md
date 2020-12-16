---
title: "userFlowApiConnectorConfiguration resource type"
description: "Represents which API connectors are enabled for a user flow."
author: "nickgmicrosoft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# userFlowApiConnectorConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines which APIs are called at specific points in the user flow.  Each relationship of this object corresponds to a specific step in the user flow that can be configured to call an API connector.

## Methods
|Method|Return type|Description|
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships

| Relationship            | Type                                            | Description                                                                                                                                             |
| :---------------------- | :---------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| postFederationSignup    | [identityApiConnector](identityapiconnector.md) | Specifies an API to call after federation with an external identity provider (like Google, Facebook, or Azure AD) is completed when user is signing up. |
| postAttributeCollection | [identityApiConnector](identityapiconnector.md) | Specifies an API to call after a user submits collected attributes and before the user is created.                                                      |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowApiConnectorConfiguration"
}
```
