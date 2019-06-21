---
title: "List provisioningObjectSummary"
description: "Get all provisioning events that occurred in your tenant."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "ms.prod"
doc_type: "apiPageType"
---

# List provisioningObjectSummary

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all provisioning events that occurred in your tenant such as the deletion of a group in a target application or the creation of a user when provisioning user accounts from your HR system. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AuditLog.Read.All and Directory.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | AuditLog.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
Get /auditLogs/directoryProvisioning
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Header        | Value                      |
|:--------------|:---------------------------|
| Authorization | Bearer {token} (required)  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [provisioningObjectSummary](../resources/provisioningobjectsummary.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "list_provisioningobjectsummary"
}-->

```http
GET https://graph.microsoft.com/beta/auditLogs/directoryProvisioning
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.provisioningObjectSummary"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 271

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get provisioningObjectSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
