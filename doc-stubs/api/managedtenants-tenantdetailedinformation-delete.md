---
title: "Delete tenantDetailedInformation"
description: "Deletes a tenantDetailedInformation object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Delete tenantDetailedInformation
Namespace: microsoft.graph.managedTenants



Deletes a [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /tenantRelationships/managedTenants/tenantsDetailedInformation/{tenantDetailedInformationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_tenantdetailedinformation"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantsDetailedInformation/{tenantDetailedInformationId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

