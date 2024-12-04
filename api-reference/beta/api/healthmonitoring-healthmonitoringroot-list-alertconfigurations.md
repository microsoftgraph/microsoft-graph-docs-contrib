---
title: "List alertConfigurations"
description: "Get a list of the alertConfiguration objects and their properties."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List alertConfigurations

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the Microsoft Entra health monitoring [alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "healthmonitoring-healthmonitoringroot-list-alertconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-healthmonitoringroot-list-alertconfigurations-permissions.md)]

[!INCLUDE [rbac-healthmonitoring-alertconfiguration-apis-read](../includes/rbac-for-apis/rbac-healthmonitoring-alertconfiguration-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/healthMonitoring/alertConfigurations
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. `$skip` isn't supported. The default and maximum page sizes are 100 alert objects.

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alertConfigurations",
  "value": [
    {
      "id": "mfaSignInFailure",
      "emailNotificationConfigurations": [
        {
            "groupId": "c5140914-9507-4180-b60c-04d5ec5eddcb",
            "isEnabled": true
        }
      ]
    },
    {
      "id": "managedDeviceSignInFailure",
      "emailNotificationConfigurations": [
        {
            "groupId": "c5140914-9507-4180-b60c-04d5ec5eddcb",
            "isEnabled": false
        }
      ]
    }
  ]
}
```

