---
title: "Update alertConfiguration"
description: "Update the properties of a microsoft.graph.healthMonitoring.alertConfiguration object."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Update alertConfiguration

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "healthmonitoring-alertconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-alertconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /reports/healthMonitoring/alertConfigurations/{alertConfigurationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|emailNotificationConfigurations|[microsoft.graph.healthMonitoring.emailNotificationConfiguration](../resources/healthmonitoring-emailnotificationconfiguration.md) collection|Email notification settings for the particular alert type.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_alertconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/reports/healthMonitoring/alertConfigurations/{alertConfigurationId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.healthMonitoring.alertConfiguration",
  "emailNotificationConfigurations": [
    {
      "@odata.type": "microsoft.graph.healthMonitoring.emailNotificationConfiguration"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.healthMonitoring.alertConfiguration",
  "id": "ec67ef23-cc94-1309-a4a6-93d64bd3290d",
  "emailNotificationConfigurations": [
    {
      "@odata.type": "microsoft.graph.healthMonitoring.emailNotificationConfiguration"
    }
  ]
}
```

