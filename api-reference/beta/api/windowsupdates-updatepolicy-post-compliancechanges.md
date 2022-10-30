---
title: "Create complianceChange"
description: "Create a new complianceChange object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create complianceChange
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [complianceChange](../resources/windowsupdates-compliancechange.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [complianceChange](../resources/windowsupdates-compliancechange.md) object.

You can specify the following properties when creating a **complianceChange**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|isRevoked|Boolean|**TODO: Add Description** Optional.|
|revokedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [complianceChange](../resources/windowsupdates-compliancechange.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_compliancechange_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges
Content-Type: application/json
Content-length: 144

{
  "@odata.type": "#microsoft.graph.windowsUpdates.complianceChange",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.complianceChange"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.complianceChange",
  "id": "fcb57826-daaa-c8ac-bf9d-137b74a90a14",
  "createdDateTime": "String (timestamp)",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)"
}
```

