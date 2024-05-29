---
title: "List alertConfiguration objects"
description: "Get a list of the microsoft.graph.healthMonitoring.alertConfiguration objects and their properties."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List alertConfiguration objects

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "healthmonitoring-healthmonitoringroot-list-alertconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-healthmonitoringroot-list-alertconfigurations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/healthMonitoring/alertConfigurations
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_alertconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/healthMonitoring/alertConfigurations
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.healthMonitoring.alertConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.healthMonitoring.alertConfiguration",
      "id": "ec67ef23-cc94-1309-a4a6-93d64bd3290d",
      "emailNotificationConfigurations": [
        {
          "@odata.type": "microsoft.graph.healthMonitoring.emailNotificationConfiguration"
        }
      ]
    }
  ]
}
```

