---
title: Delete simulations 
description: Delete an attack simulation campaign for a tenant.
author: stuartcl
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Delete simulations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an attack simulation campaign for a tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| Delegated (work or school account)     | AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.ReadWrite.All              |

## HTTP request
```http
DELETE /security/attackSimulation/simulations/{simulationId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header         |Value                    |
|---------------|-------------------------|
|Authorization  |Bearer {token}. Required.|
|Content-Type   |application/json         |

## Request body
In the request body, supply a JSON representation of **simulation** object.

## Response
If successful, this method returns ```204 NoContent``` response code in the response.

## Example

**Request**

Here is an example of a request.

```http
DELETE https://graph.microsoft.com/beta//security/attackSimulation/simulations/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc
```

**Response**

Here is an example of the response. 

```http
HTTP/1.1 204
```



