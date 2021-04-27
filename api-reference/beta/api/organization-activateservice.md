---
title: "organization: activateService"
description: "Activates a service for an organization."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# organization: activateService

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Description

The **activateService** object  is used to activate a service for an organization. This operation requires administrator privileges to run.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type|Permissions (from least to most privileged)|
| :--- | :--- |
| Delegated (work or school account) | Directory.ReadWriteAdvanced.All, Directory.ReadWrite.All|
| Delegated (personal Microsoft account) | Not Supported. |
| Application | Directory.ReadWriteAdvanced.All, Directory.ReadWrite.All|


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /organization/{organizationId}/activateService
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [activateService](../resources/activateService) object.
At least one parameter must be defined for this action to be valid. There are two possible cases: You could have `service` or (`servicePlanId` and `skuId`). If all three parameters are defined, then the `servicePlanId` and `skuId` takes precedence.

### Parameters

| Parameter         | Type         | Required? | Description                           |
| ----------------- | ------------ | --------- | ------------------------------------- |
| `service` | `Edm.String` | False     | Name of the service to activate       |
| `servicePlanId`   | `Edm.Guid`   | False     | PlanId of the ServicePlan to activate |
| `skuId`           | `Guid`       | False     | SkuId of SKU the service plan is on   |

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "organization_activateservice"
}
-->
``` http
POST https://graph.microsoft.com/beta/organization/{organizationId}/activateService

Content-Type: application/json
Content-length: 150
{
    "skuId": "6fd2c87f-b296-42f0-b197-1e91e994b900",
    "servicePlanId": "a23b959c-7ce8-4e57-9140-b90eb88a9e97"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
