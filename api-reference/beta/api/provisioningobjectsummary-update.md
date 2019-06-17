---
title: "Update provisioningobjectsummary"
description: "Update the properties of provisioningobjectsummary object."
localization_priority: Normal
author: "arvinh@microsoft.com"
ms.prod: "ms.prod"
doc_type: "apiPageType"
---

# Update provisioningobjectsummary

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of provisioningobjectsummary object.

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
PATCH /auditLogs/directoryProvisioning/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|action|String||
|activityDateTime|DateTimeOffset||
|changeId|String||
|cycleId|String||
|durationInMilliseconds|Int32||
|initiatedBy|initiator||
|jobId|String||
|modifiedProperties|modifiedProperty collection||
|provisioningSteps|provisioningStep collection||
|sourceIdentity|provisionedIdentity||
|sourceSystem|provisioningSystemDetails||
|statusInfo|statusBase||
|targetIdentity|provisionedIdentity||
|targetSystem|provisioningSystemDetails||
|tenantId|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_provisioningobjectsummary"
}-->

```http
PATCH https://graph.microsoft.com/beta/auditLogs/directoryProvisioning/{id}
Content-type: application/json

{
  "activityDateTime": "datetime-value",
  "tenantId": "tenantId-value",
  "jobId": "jobId-value",
  "cycleId": "cycleId-value",
  "changeId": "changeId-value"
}
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
  "description": "Update provisioningobjectsummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->