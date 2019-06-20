---
title: "Get provisioningObjectSummary"
description: "Retrieve the properties and relationships of provisioningobjectsummary object."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "ms.prod"
doc_type: "apiPageType"
---

# Get provisioningObjectSummary

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Each action (e.g. create user, update user, delete user) performed by the Azure AD provisioning service can be retrieved by this API. Given the id of an event, you can retrieve information such as the status of the event, who / what was being provisioned and where the object was being provisioned to. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /auditLogs/directoryProvisioning/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_provisioningobjectsummary"
}-->

```http
GET https://graph.microsoft.com/beta/auditLogs/directoryProvisioning/{id}
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

{
  "id": "id-value",
  "activityDateTime": "datetime-value",
  "tenantId": "tenantId-value",
  "jobId": "jobId-value",
  "cycleId": "cycleId-value",
  "changeId": "changeId-value"
}
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
