---
title: "Create cloudPcBulkAction"
description: "Create a new cloudPcBulkAction object."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/27/2024
---

# Create cloudPcBulkAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us-l4.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_bulkactions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-bulkactions-permissions.md)]

[!INCLUDE [rbac-cloudpc-create-bulk-action](../includes/rbac-for-apis/rbac-cloudpc-apis-create-bulk-action.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/virtualEndpoint/bulkActions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

The **cloudPcBulkAction** resource is abstract. Specify a derived type in **@odata.type** to select the action to perform. For example, use `#microsoft.graph.cloudPcBulkSetDeviceName` to set device names by using a template, or `#microsoft.graph.cloudPcBulkPowerOff` to power off Cloud PCs.

You can specify the following properties when you create a **cloudPcBulkAction**.

|Property|Type|Description|
|:---|:---|:---|
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Individual Cloud PC IDs are GUID-formatted strings. Required.|
|deviceNamingTemplate|String|The naming template for [cloudPcBulkSetDeviceName](../resources/cloudpcbulksetdevicename.md). Required for that derived type. Use an optional prefix followed by one `%RAND:x%` macro, where `x` represents the number of random alphanumeric characters and is at least 5. The generated name must be 5–15 characters long. The prefix can contain ASCII letters, digits, and hyphens, and must not start with a hyphen. The prefix length plus `x` must not exceed 15. For example, `ACRA-%RAND:5%` generates a ten-character name such as `ACRA-A1B2C`.|
|displayName|String|Name of this bulk action. Required.|
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the bulk actions can be initiated during maintenance window. When `true`, bulk action will use maintenance window to schedule action, When `false` means bulk action will not use the maintenance window. Default value is `false`.|

## Response

If successful, this method returns a `202 Accepted` response code and a derived [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object in the response body.

The action runs asynchronously after the request is accepted. Use [Get cloudPcBulkAction](../api/cloudpcbulkaction-get.md) to check its **status** and **actionSummary**. An accepted request doesn't mean that all targeted Cloud PCs completed the action.

## Examples

### Example 1: Power off Cloud PCs

The following example shows how to power off Cloud PCs.

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpcbulkaction_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkPowerOff",
  "displayName": "Bulk Power Off by Andy",
  "cloudPcIds": [
    "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
    "85994912-197b-4927-b569-447bd81350ec"
  ],
  "scheduledDuringMaintenanceWindow": true
}
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcBulkPowerOff"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkPowerOff",
  "id": "231ad98f-41b3-872b-dd37-c70bf22cbdac",
  "displayName": "Bulk Power Off by Andy",
  "cloudPcIds": [
    "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
    "85994912-197b-4927-b569-447bd81350ec"
  ],
  "actionSummary": null,
  "initiatedByUserPrincipalName": "johnd@contoso.com",
  "scheduledDuringMaintenanceWindow": true,
  "status": "pending",
  "createdDateTime": "2024-02-05T10:29:57Z"
}
```

### Example 2: Set device names for Cloud PCs

The following example shows how to create a bulk action to set the device names of two Cloud PCs. The template generates a name with the prefix `ACRA-` followed by five random alphanumeric characters for each Cloud PC.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpcbulksetdevicename"
}
-->
```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkSetDeviceName",
  "cloudPcIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0",
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "deviceNamingTemplate": "ACRA-%RAND:5%",
  "displayName": "Set device names for sales Cloud PCs",
  "scheduledDuringMaintenanceWindow": false
}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcBulkSetDeviceName"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkSetDeviceName",
  "id": "1d164206-bf41-4fd2-8424-a3192d392273",
  "cloudPcIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0",
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "createdDateTime": "2026-10-15T07:00:00Z",
  "deviceNamingTemplate": "ACRA-%RAND:5%",
  "displayName": "Set device names for sales Cloud PCs",
  "scheduledDuringMaintenanceWindow": false,
  "status": "pending"
}
```
