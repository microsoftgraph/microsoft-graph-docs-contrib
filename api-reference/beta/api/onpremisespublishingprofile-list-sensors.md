---
title: "List privateAccessSensor objects"
description: "Get a list of the privateAccessSensor objects and their properties."
author: "shahzad-khalid"
ms.date: 06/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List privateAccessSensor objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the privateAccessSensor objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremisespublishingprofile-list-sensors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremisespublishingprofile-list-sensors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /onPremisesPublishingProfiles/{onPremisesPublishingProfilesId}/sensors
```

## Optional query parameters

This method supports `$filter`, `$expand`, `$select`, `$count`, `$top`, `$skip` the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [privateAccessSensor](../resources/privateaccesssensor.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_privateaccesssensor"
}
-->
``` http
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles/{onPremisesPublishingProfilesId}/sensors
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privateAccessSensor"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privateAccessSensor",
      "id": "f052d43d-effc-2df0-70a8-5e899d400d42",
      "machineName": "String",
      "externalIp": "String",
      "version": "String",
      "isBreakglassEnabled": "Boolean"
    }
  ]
}
```

