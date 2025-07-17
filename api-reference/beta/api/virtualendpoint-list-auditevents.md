---
title: "List auditEvents"
description: "Get a list of the cloudPcAuditEvent objects and their properties."
author: "ecmadao"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/03/2024
---

# List auditEvents

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects for the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_auditevents" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-auditevents-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/auditEvents
```

## Optional query parameters

This method supports `$skiptoken`, `$top` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcauditevent"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/auditEvents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcauditevent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-cloudpcauditevent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcauditevent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcauditevent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcauditevent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcauditevent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcauditevent-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcauditevent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcAuditEvent",
  "isCollection": true
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcAuditEvent",
      "id": "250473f5-029f-4037-813d-ba4768201d61",
      "displayName": "Delete OnPremisesConnection",
      "componentName": "CloudPcOnPremisesConnectionsController",
      "activity": null,
      "activityDateTime": "2021-02-14T13:10:51.814636+08:00",
      "activityType": "Delete CloudPcOnPremisesConnection",
      "activityOperationType": "Delete",
      "activityResult": "Success",
      "correlationId": "a5c71cc6-2271-4d5c-9bfe-d94781e83fe6",
      "category": "Cloud PC",
      "actor": {
        "@odata.type": "microsoft.graph.cloudPcAuditActor",
        "type": "application",
        "userPermissions": [],
        "applicationId": "69cc3193-b6c4-4172-98e5-ed0f38ab3ff8",
        "applicationDisplayName": "Cloud PC Ibiza",
        "userPrincipalName": null,
        "servicePrincipalName": null,
        "ipAddress": null,
        "userId": "ccaf0214-2d5c-4c72-b23f-191ff2c87313",
        "userRoleScopeTags": [
          {
            "@odata.type": "microsoft.graph.cloudPcUserRoleScopeTagInfo",
            "displayName": "Europe",
            "roleScopeTagId": "8ad48104-cb5c-497c-b144-6fc9927354ab"
          }
        ],
        "remoteTenantId": "33c73c76-bf5d-45ba-ab4f-ee49c9a9be76",
        "remoteUserId": "ccaf0214-2d5c-4c72-b23f-191ff2c87313"
      },
      "resources": [
        {
          "@odata.type": "microsoft.graph.cloudPcAuditResource",
          "displayName": "ecmadao-test-azureconnection-1",
          "modifiedProperties": [
            {
              "@odata.type": "microsoft.graph.cloudPcAuditProperty",
              "displayName": "AdDomainUsername",
              "oldValue": "12312",
              "newValue": "new-adDomainUsername"
            }
          ],
          "resourceType": "CloudPcOnPremisesConnection",
          "resourceId": "a7508af8-d334-41ba-83a7-26cc88959724"
        }
      ]
    }
  ]
}
```
